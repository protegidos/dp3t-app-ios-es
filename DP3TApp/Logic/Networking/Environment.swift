/*
 * Created by Ubique Innovation AG
 * https://www.ubique.ch
 * Copyright (c) 2020. All rights reserved.
 */

import Foundation

/// The backend environment under which the application runs.
enum Environment {
    case dev
    case abnahme
    case prod

    /// The current environment, as configured in build settings.
    static var current: Environment {
        #if DEBUG
            return .dev
        #elseif RELEASE_ABNAHME
            return .abnahme
        #elseif RELEASE_TEST
            return .dev
        #elseif RELEASE_PROD
            return .prod
        #elseif RELEASE_UBDIAG
            return .dev
        #else
            fatalError("Missing build setting for environment")
        #endif
    }

    var codegenService: Backend {
        switch self {
        case .dev:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        case .abnahme:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        case .prod:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        }
    }


    var configService: Backend {
        switch self {
        case .dev:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        case .abnahme:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        case .prod:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        }
    }

    var publishService: Backend {
        switch self {
        case .dev:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        case .abnahme:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        case .prod:
            return Backend("https://emasab.duckdns.org:4433", version: "v1")
        }
    }
}


