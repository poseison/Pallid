//
//  NetworkManager.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import Foundation

class NetworkManager {
    static var session = URLSession.shared

    static func requestData(for request: URLRequest) async throws -> Data {
        let (data, response) = try await session.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.unknown
        }

        if (200...299).contains(httpResponse.statusCode) {
            return data
        } else {
            throw mapError(for: httpResponse.statusCode)
        }
    }

    private static func mapError(for statusCode: Int) -> NetworkError {
        switch statusCode {
        case 400:
            return NetworkError.badRequest
        case 401:
            return NetworkError.unauthorized
        case 403:
            return NetworkError.forbidden
        case 404:
            return NetworkError.notFound
        case 500:
            return NetworkError.serverError
        default:
            return NetworkError.customError(
                "Unexpected status code: \(statusCode)")
        }
    }
}

class JSONDecoderService {
    static func decode<T: Codable>(data: Data) throws -> T {
        let decoder = JSONDecoder()
        let decoderObject = try decoder.decode(T.self, from: data)
        print(decoderObject)
        return decoderObject
    }
}
