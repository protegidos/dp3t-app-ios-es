/*
 * Created by Ubique Innovation AG
 * https://www.ubique.ch
 * Copyright (c) 2020. All rights reserved.
 */

import Foundation
import Security

extension URLSession {
    static let evaluator = CertificateEvaluator()

    static let certificatePinned: URLSession = {
        let session = URLSession(configuration: .default,
                                 delegate: URLSession.evaluator,
                                 delegateQueue: nil)
        return session
    }()
}

class CertificateEvaluator: NSObject, URLSessionDelegate {
    typealias AuthenticationChallengeCompletion = (URLSession.AuthChallengeDisposition, URLCredential?) -> Void

    private let trustManager: UBServerTrustManager

    #if DEBUG
        static let useCertificatePinning = false
    #else
        static let useCertificatePinning = true
    #endif

    override init() {
        if !CertificateEvaluator.useCertificatePinning {
            trustManager = UBServerTrustManager(evaluators: [:], default: UBDisabledEvaluator())
            return
        }

        var evaluators: [String: UBServerTrustEvaluator] = [:]

        let bundle = Bundle.main

        // all these hosts have a seperate certificate
        let hosts = ["emasab.duckdns.org"]
        for host in hosts {
            if let certificate = bundle.getCertificate(with: host) {
                let evaluator = UBPinnedCertificatesTrustEvaluator(certificates: [certificate], validateHost: true)
                evaluators[host] = evaluator
            }
        }

        // for these host we just pin the intermediate certificate of quoVadis
        if let c = bundle.getCertificate(with: "QuoVadis") {
            let evaluator = UBPinnedCertificatesTrustEvaluator(certificates: [c], validateHost: true)
            evaluators["www.pt-d.bfs.admin.ch"] = evaluator
            evaluators["www.pt-a.bfs.admin.ch"] = evaluator
            evaluators["www.pt-t.bfs.admin.ch"] = evaluator
            evaluators["www.pt.bfs.admin.ch"] = evaluator
        }

        trustManager = UBServerTrustManager(evaluators: evaluators)
    }

    // MARK: - URLSessionDelegate

    private typealias ChallengeEvaluation = (disposition: URLSession.AuthChallengeDisposition, credential: URLCredential?, error: Error?)
    func urlSession(_: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        let evaluation: ChallengeEvaluation

        switch challenge.protectionSpace.authenticationMethod {
        case NSURLAuthenticationMethodServerTrust:
            evaluation = attemptServerTrustAuthentication(with: challenge)
        default:
            evaluation = (.cancelAuthenticationChallenge, nil, nil)
        }

        completionHandler(evaluation.disposition, evaluation.credential)
    }

    /// :nodoc:
    private func attemptServerTrustAuthentication(with challenge: URLAuthenticationChallenge) -> ChallengeEvaluation {
        let host = challenge.protectionSpace.host

        guard challenge.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust,
            let trust = challenge.protectionSpace.serverTrust else {
            return (.cancelAuthenticationChallenge, nil, nil)
        }

        do {
            guard let evaluator = trustManager.serverTrustEvaluator(forHost: host) else {
                // If we don't have a evaluator we fail
                return (.cancelAuthenticationChallenge, nil, nil)
            }

            try evaluator.evaluate(trust, forHost: host)

            return (.useCredential, URLCredential(trust: trust), nil)
        } catch {
            return (.cancelAuthenticationChallenge, nil, error)
        }
    }
}

extension Bundle {
    func getCertificate(with name: String, fileExtension: String = "der") -> SecCertificate? {
        if let certificateURL = url(forResource: name, withExtension: fileExtension),
            let certificateData = try? Data(contentsOf: certificateURL),
            let certificate = SecCertificateCreateWithData(nil, certificateData as CFData) {
            return certificate
        }
        return nil
    }
}
