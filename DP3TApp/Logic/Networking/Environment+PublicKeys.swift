/*
 * Created by Ubique Innovation AG
 * https://www.ubique.ch
 * Copyright (c) 2020. All rights reserved.
 */

import Foundation

extension Environment {
    var jwtPublicKey: Data {
        switch self {
        case .dev:
            return Data(base64Encoded: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNSVENDQWV1Z0F3SUJBZ0lKQU92OHlNSktvd3QvTUFvR0NDcUdTTTQ5QkFNQ01IOHhDekFKQmdOVkJBWVQKQWtWVE1ROHdEUVlEVlFRSURBWk5ZV1J5YVdReER6QU5CZ05WQkFjTUJrMWhaSEpwWkRFUU1BNEdBMVVFQ2d3SApUV2x1WkdSbGJqRWJNQmtHQTFVRUF3d1NaVzFoYzJGaUxtUjFZMnRrYm5NdWIzSm5NUjh3SFFZSktvWklodmNOCkFRa0JGaEJsYldGellXSkFaMjFoYVd3dVkyOXRNQjRYRFRJd01EVXhOekl6TURRME1sb1hEVE13TURVeE5USXoKTURRME1sb3dmekVMTUFrR0ExVUVCaE1DUlZNeER6QU5CZ05WQkFnTUJrMWhaSEpwWkRFUE1BMEdBMVVFQnd3RwpUV0ZrY21sa01SQXdEZ1lEVlFRS0RBZE5hVzVrWkdWdU1Sc3dHUVlEVlFRRERCSmxiV0Z6WVdJdVpIVmphMlJ1CmN5NXZjbWN4SHpBZEJna3Foa2lHOXcwQkNRRVdFR1Z0WVhOaFlrQm5iV0ZwYkM1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVJyM21HUGlWcVdVbndiaTNtbnVGQ1FOUkpRcm05OUZ1a21XUDRtM21vUgpmTjRFMlpRTEVuYmNDWmlqYnd1YmdKd3R6TG92YW5YeTV6cDBWT2RJWjlHcG8xQXdUakFkQmdOVkhRNEVGZ1FVCnFucTdMb1loNjFIM3I0emh1NHllMnJiMzMzQXdId1lEVlIwakJCZ3dGb0FVcW5xN0xvWWg2MUgzcjR6aHU0eWUKMnJiMzMzQXdEQVlEVlIwVEJBVXdBd0VCL3pBS0JnZ3Foa2pPUFFRREFnTklBREJGQWlBNGQ1NUF5bis4RWNUcQpWMlhoWE91WnJVazY1NXJFZnFPcWZCRlFJUkRpd0FJaEFNd0VnLy9MUG9YNVl0SFcvZGZkN3lWNkxXajBRYlhuCjcyVXgxSWk2SDBpaAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==")!
        case .test:
            return Data(base64Encoded: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNSVENDQWV1Z0F3SUJBZ0lKQU92OHlNSktvd3QvTUFvR0NDcUdTTTQ5QkFNQ01IOHhDekFKQmdOVkJBWVQKQWtWVE1ROHdEUVlEVlFRSURBWk5ZV1J5YVdReER6QU5CZ05WQkFjTUJrMWhaSEpwWkRFUU1BNEdBMVVFQ2d3SApUV2x1WkdSbGJqRWJNQmtHQTFVRUF3d1NaVzFoYzJGaUxtUjFZMnRrYm5NdWIzSm5NUjh3SFFZSktvWklodmNOCkFRa0JGaEJsYldGellXSkFaMjFoYVd3dVkyOXRNQjRYRFRJd01EVXhOekl6TURRME1sb1hEVE13TURVeE5USXoKTURRME1sb3dmekVMTUFrR0ExVUVCaE1DUlZNeER6QU5CZ05WQkFnTUJrMWhaSEpwWkRFUE1BMEdBMVVFQnd3RwpUV0ZrY21sa01SQXdEZ1lEVlFRS0RBZE5hVzVrWkdWdU1Sc3dHUVlEVlFRRERCSmxiV0Z6WVdJdVpIVmphMlJ1CmN5NXZjbWN4SHpBZEJna3Foa2lHOXcwQkNRRVdFR1Z0WVhOaFlrQm5iV0ZwYkM1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVJyM21HUGlWcVdVbndiaTNtbnVGQ1FOUkpRcm05OUZ1a21XUDRtM21vUgpmTjRFMlpRTEVuYmNDWmlqYnd1YmdKd3R6TG92YW5YeTV6cDBWT2RJWjlHcG8xQXdUakFkQmdOVkhRNEVGZ1FVCnFucTdMb1loNjFIM3I0emh1NHllMnJiMzMzQXdId1lEVlIwakJCZ3dGb0FVcW5xN0xvWWg2MUgzcjR6aHU0eWUKMnJiMzMzQXdEQVlEVlIwVEJBVXdBd0VCL3pBS0JnZ3Foa2pPUFFRREFnTklBREJGQWlBNGQ1NUF5bis4RWNUcQpWMlhoWE91WnJVazY1NXJFZnFPcWZCRlFJUkRpd0FJaEFNd0VnLy9MUG9YNVl0SFcvZGZkN3lWNkxXajBRYlhuCjcyVXgxSWk2SDBpaAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==")!
        case .abnahme:
            return Data(base64Encoded: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNSVENDQWV1Z0F3SUJBZ0lKQU92OHlNSktvd3QvTUFvR0NDcUdTTTQ5QkFNQ01IOHhDekFKQmdOVkJBWVQKQWtWVE1ROHdEUVlEVlFRSURBWk5ZV1J5YVdReER6QU5CZ05WQkFjTUJrMWhaSEpwWkRFUU1BNEdBMVVFQ2d3SApUV2x1WkdSbGJqRWJNQmtHQTFVRUF3d1NaVzFoYzJGaUxtUjFZMnRrYm5NdWIzSm5NUjh3SFFZSktvWklodmNOCkFRa0JGaEJsYldGellXSkFaMjFoYVd3dVkyOXRNQjRYRFRJd01EVXhOekl6TURRME1sb1hEVE13TURVeE5USXoKTURRME1sb3dmekVMTUFrR0ExVUVCaE1DUlZNeER6QU5CZ05WQkFnTUJrMWhaSEpwWkRFUE1BMEdBMVVFQnd3RwpUV0ZrY21sa01SQXdEZ1lEVlFRS0RBZE5hVzVrWkdWdU1Sc3dHUVlEVlFRRERCSmxiV0Z6WVdJdVpIVmphMlJ1CmN5NXZjbWN4SHpBZEJna3Foa2lHOXcwQkNRRVdFR1Z0WVhOaFlrQm5iV0ZwYkM1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVJyM21HUGlWcVdVbndiaTNtbnVGQ1FOUkpRcm05OUZ1a21XUDRtM21vUgpmTjRFMlpRTEVuYmNDWmlqYnd1YmdKd3R6TG92YW5YeTV6cDBWT2RJWjlHcG8xQXdUakFkQmdOVkhRNEVGZ1FVCnFucTdMb1loNjFIM3I0emh1NHllMnJiMzMzQXdId1lEVlIwakJCZ3dGb0FVcW5xN0xvWWg2MUgzcjR6aHU0eWUKMnJiMzMzQXdEQVlEVlIwVEJBVXdBd0VCL3pBS0JnZ3Foa2pPUFFRREFnTklBREJGQWlBNGQ1NUF5bis4RWNUcQpWMlhoWE91WnJVazY1NXJFZnFPcWZCRlFJUkRpd0FJaEFNd0VnLy9MUG9YNVl0SFcvZGZkN3lWNkxXajBRYlhuCjcyVXgxSWk2SDBpaAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==")!
        case .prod:
            return Data(base64Encoded: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNSVENDQWV1Z0F3SUJBZ0lKQU92OHlNSktvd3QvTUFvR0NDcUdTTTQ5QkFNQ01IOHhDekFKQmdOVkJBWVQKQWtWVE1ROHdEUVlEVlFRSURBWk5ZV1J5YVdReER6QU5CZ05WQkFjTUJrMWhaSEpwWkRFUU1BNEdBMVVFQ2d3SApUV2x1WkdSbGJqRWJNQmtHQTFVRUF3d1NaVzFoYzJGaUxtUjFZMnRrYm5NdWIzSm5NUjh3SFFZSktvWklodmNOCkFRa0JGaEJsYldGellXSkFaMjFoYVd3dVkyOXRNQjRYRFRJd01EVXhOekl6TURRME1sb1hEVE13TURVeE5USXoKTURRME1sb3dmekVMTUFrR0ExVUVCaE1DUlZNeER6QU5CZ05WQkFnTUJrMWhaSEpwWkRFUE1BMEdBMVVFQnd3RwpUV0ZrY21sa01SQXdEZ1lEVlFRS0RBZE5hVzVrWkdWdU1Sc3dHUVlEVlFRRERCSmxiV0Z6WVdJdVpIVmphMlJ1CmN5NXZjbWN4SHpBZEJna3Foa2lHOXcwQkNRRVdFR1Z0WVhOaFlrQm5iV0ZwYkM1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVJyM21HUGlWcVdVbndiaTNtbnVGQ1FOUkpRcm05OUZ1a21XUDRtM21vUgpmTjRFMlpRTEVuYmNDWmlqYnd1YmdKd3R6TG92YW5YeTV6cDBWT2RJWjlHcG8xQXdUakFkQmdOVkhRNEVGZ1FVCnFucTdMb1loNjFIM3I0emh1NHllMnJiMzMzQXdId1lEVlIwakJCZ3dGb0FVcW5xN0xvWWg2MUgzcjR6aHU0eWUKMnJiMzMzQXdEQVlEVlIwVEJBVXdBd0VCL3pBS0JnZ3Foa2pPUFFRREFnTklBREJGQWlBNGQ1NUF5bis4RWNUcQpWMlhoWE91WnJVazY1NXJFZnFPcWZCRlFJUkRpd0FJaEFNd0VnLy9MUG9YNVl0SFcvZGZkN3lWNkxXajBRYlhuCjcyVXgxSWk2SDBpaAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==")!
        }
    }

    var configJwtPublicKey: Data {
        switch self {
        case .dev:
            return Data(base64Encoded: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNSVENDQWV1Z0F3SUJBZ0lKQU92OHlNSktvd3QvTUFvR0NDcUdTTTQ5QkFNQ01IOHhDekFKQmdOVkJBWVQKQWtWVE1ROHdEUVlEVlFRSURBWk5ZV1J5YVdReER6QU5CZ05WQkFjTUJrMWhaSEpwWkRFUU1BNEdBMVVFQ2d3SApUV2x1WkdSbGJqRWJNQmtHQTFVRUF3d1NaVzFoYzJGaUxtUjFZMnRrYm5NdWIzSm5NUjh3SFFZSktvWklodmNOCkFRa0JGaEJsYldGellXSkFaMjFoYVd3dVkyOXRNQjRYRFRJd01EVXhOekl6TURRME1sb1hEVE13TURVeE5USXoKTURRME1sb3dmekVMTUFrR0ExVUVCaE1DUlZNeER6QU5CZ05WQkFnTUJrMWhaSEpwWkRFUE1BMEdBMVVFQnd3RwpUV0ZrY21sa01SQXdEZ1lEVlFRS0RBZE5hVzVrWkdWdU1Sc3dHUVlEVlFRRERCSmxiV0Z6WVdJdVpIVmphMlJ1CmN5NXZjbWN4SHpBZEJna3Foa2lHOXcwQkNRRVdFR1Z0WVhOaFlrQm5iV0ZwYkM1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVJyM21HUGlWcVdVbndiaTNtbnVGQ1FOUkpRcm05OUZ1a21XUDRtM21vUgpmTjRFMlpRTEVuYmNDWmlqYnd1YmdKd3R6TG92YW5YeTV6cDBWT2RJWjlHcG8xQXdUakFkQmdOVkhRNEVGZ1FVCnFucTdMb1loNjFIM3I0emh1NHllMnJiMzMzQXdId1lEVlIwakJCZ3dGb0FVcW5xN0xvWWg2MUgzcjR6aHU0eWUKMnJiMzMzQXdEQVlEVlIwVEJBVXdBd0VCL3pBS0JnZ3Foa2pPUFFRREFnTklBREJGQWlBNGQ1NUF5bis4RWNUcQpWMlhoWE91WnJVazY1NXJFZnFPcWZCRlFJUkRpd0FJaEFNd0VnLy9MUG9YNVl0SFcvZGZkN3lWNkxXajBRYlhuCjcyVXgxSWk2SDBpaAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==")!
        case .test:
            return Data(base64Encoded: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNSVENDQWV1Z0F3SUJBZ0lKQU92OHlNSktvd3QvTUFvR0NDcUdTTTQ5QkFNQ01IOHhDekFKQmdOVkJBWVQKQWtWVE1ROHdEUVlEVlFRSURBWk5ZV1J5YVdReER6QU5CZ05WQkFjTUJrMWhaSEpwWkRFUU1BNEdBMVVFQ2d3SApUV2x1WkdSbGJqRWJNQmtHQTFVRUF3d1NaVzFoYzJGaUxtUjFZMnRrYm5NdWIzSm5NUjh3SFFZSktvWklodmNOCkFRa0JGaEJsYldGellXSkFaMjFoYVd3dVkyOXRNQjRYRFRJd01EVXhOekl6TURRME1sb1hEVE13TURVeE5USXoKTURRME1sb3dmekVMTUFrR0ExVUVCaE1DUlZNeER6QU5CZ05WQkFnTUJrMWhaSEpwWkRFUE1BMEdBMVVFQnd3RwpUV0ZrY21sa01SQXdEZ1lEVlFRS0RBZE5hVzVrWkdWdU1Sc3dHUVlEVlFRRERCSmxiV0Z6WVdJdVpIVmphMlJ1CmN5NXZjbWN4SHpBZEJna3Foa2lHOXcwQkNRRVdFR1Z0WVhOaFlrQm5iV0ZwYkM1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVJyM21HUGlWcVdVbndiaTNtbnVGQ1FOUkpRcm05OUZ1a21XUDRtM21vUgpmTjRFMlpRTEVuYmNDWmlqYnd1YmdKd3R6TG92YW5YeTV6cDBWT2RJWjlHcG8xQXdUakFkQmdOVkhRNEVGZ1FVCnFucTdMb1loNjFIM3I0emh1NHllMnJiMzMzQXdId1lEVlIwakJCZ3dGb0FVcW5xN0xvWWg2MUgzcjR6aHU0eWUKMnJiMzMzQXdEQVlEVlIwVEJBVXdBd0VCL3pBS0JnZ3Foa2pPUFFRREFnTklBREJGQWlBNGQ1NUF5bis4RWNUcQpWMlhoWE91WnJVazY1NXJFZnFPcWZCRlFJUkRpd0FJaEFNd0VnLy9MUG9YNVl0SFcvZGZkN3lWNkxXajBRYlhuCjcyVXgxSWk2SDBpaAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==")!
        case .abnahme:
            return Data(base64Encoded: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNSVENDQWV1Z0F3SUJBZ0lKQU92OHlNSktvd3QvTUFvR0NDcUdTTTQ5QkFNQ01IOHhDekFKQmdOVkJBWVQKQWtWVE1ROHdEUVlEVlFRSURBWk5ZV1J5YVdReER6QU5CZ05WQkFjTUJrMWhaSEpwWkRFUU1BNEdBMVVFQ2d3SApUV2x1WkdSbGJqRWJNQmtHQTFVRUF3d1NaVzFoYzJGaUxtUjFZMnRrYm5NdWIzSm5NUjh3SFFZSktvWklodmNOCkFRa0JGaEJsYldGellXSkFaMjFoYVd3dVkyOXRNQjRYRFRJd01EVXhOekl6TURRME1sb1hEVE13TURVeE5USXoKTURRME1sb3dmekVMTUFrR0ExVUVCaE1DUlZNeER6QU5CZ05WQkFnTUJrMWhaSEpwWkRFUE1BMEdBMVVFQnd3RwpUV0ZrY21sa01SQXdEZ1lEVlFRS0RBZE5hVzVrWkdWdU1Sc3dHUVlEVlFRRERCSmxiV0Z6WVdJdVpIVmphMlJ1CmN5NXZjbWN4SHpBZEJna3Foa2lHOXcwQkNRRVdFR1Z0WVhOaFlrQm5iV0ZwYkM1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVJyM21HUGlWcVdVbndiaTNtbnVGQ1FOUkpRcm05OUZ1a21XUDRtM21vUgpmTjRFMlpRTEVuYmNDWmlqYnd1YmdKd3R6TG92YW5YeTV6cDBWT2RJWjlHcG8xQXdUakFkQmdOVkhRNEVGZ1FVCnFucTdMb1loNjFIM3I0emh1NHllMnJiMzMzQXdId1lEVlIwakJCZ3dGb0FVcW5xN0xvWWg2MUgzcjR6aHU0eWUKMnJiMzMzQXdEQVlEVlIwVEJBVXdBd0VCL3pBS0JnZ3Foa2pPUFFRREFnTklBREJGQWlBNGQ1NUF5bis4RWNUcQpWMlhoWE91WnJVazY1NXJFZnFPcWZCRlFJUkRpd0FJaEFNd0VnLy9MUG9YNVl0SFcvZGZkN3lWNkxXajBRYlhuCjcyVXgxSWk2SDBpaAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==")!
        case .prod:
            return Data(base64Encoded: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNSVENDQWV1Z0F3SUJBZ0lKQU92OHlNSktvd3QvTUFvR0NDcUdTTTQ5QkFNQ01IOHhDekFKQmdOVkJBWVQKQWtWVE1ROHdEUVlEVlFRSURBWk5ZV1J5YVdReER6QU5CZ05WQkFjTUJrMWhaSEpwWkRFUU1BNEdBMVVFQ2d3SApUV2x1WkdSbGJqRWJNQmtHQTFVRUF3d1NaVzFoYzJGaUxtUjFZMnRrYm5NdWIzSm5NUjh3SFFZSktvWklodmNOCkFRa0JGaEJsYldGellXSkFaMjFoYVd3dVkyOXRNQjRYRFRJd01EVXhOekl6TURRME1sb1hEVE13TURVeE5USXoKTURRME1sb3dmekVMTUFrR0ExVUVCaE1DUlZNeER6QU5CZ05WQkFnTUJrMWhaSEpwWkRFUE1BMEdBMVVFQnd3RwpUV0ZrY21sa01SQXdEZ1lEVlFRS0RBZE5hVzVrWkdWdU1Sc3dHUVlEVlFRRERCSmxiV0Z6WVdJdVpIVmphMlJ1CmN5NXZjbWN4SHpBZEJna3Foa2lHOXcwQkNRRVdFR1Z0WVhOaFlrQm5iV0ZwYkM1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVJyM21HUGlWcVdVbndiaTNtbnVGQ1FOUkpRcm05OUZ1a21XUDRtM21vUgpmTjRFMlpRTEVuYmNDWmlqYnd1YmdKd3R6TG92YW5YeTV6cDBWT2RJWjlHcG8xQXdUakFkQmdOVkhRNEVGZ1FVCnFucTdMb1loNjFIM3I0emh1NHllMnJiMzMzQXdId1lEVlIwakJCZ3dGb0FVcW5xN0xvWWg2MUgzcjR6aHU0eWUKMnJiMzMzQXdEQVlEVlIwVEJBVXdBd0VCL3pBS0JnZ3Foa2pPUFFRREFnTklBREJGQWlBNGQ1NUF5bis4RWNUcQpWMlhoWE91WnJVazY1NXJFZnFPcWZCRlFJUkRpd0FJaEFNd0VnLy9MUG9YNVl0SFcvZGZkN3lWNkxXajBRYlhuCjcyVXgxSWk2SDBpaAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==∫")!
        }
    }
}
