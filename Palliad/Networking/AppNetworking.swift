//
//  AppNetworking.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import Foundation

class AppNetworking {
    static func buildRequest(from router: RestRouter) throws -> URLRequest {
        var components = URLComponents()
        components.scheme = router.scheme
        components.host = router.host
        components.path = router.path
        components.queryItems = router.query

        guard let url = components.url else {
            throw NSError(domain: "Invalid URL", code: 0, userInfo: nil)
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = router.method
        urlRequest.setValue(
            "application/json", forHTTPHeaderField: "Content-Type")
        //        urlRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")

        switch router.method {
        case "GET":
            urlRequest.httpBody = try getApiRequest()
        case "POST":
            urlRequest.httpBody = try postApiRequest(from: router)
        case "PUT":
            urlRequest.httpBody = try putApiRequest(from: router)
        case "DELETE":
            urlRequest.httpBody = try deleteApiRequest(from: router)
        case "PATCH":
            urlRequest.httpBody = try patchApiRequest(from: router)
        default:
            urlRequest.httpBody = try getApiRequest()
        }
        return urlRequest
    }
}

extension AppNetworking {

    static func getApiRequest() throws -> Data? {
        return nil
    }

    static func postApiRequest(from router: RestRouter) throws -> Data? {
        var data: Data?
        do {
            data = try JSONSerialization.data(
                withJSONObject: router.parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
        }
        return data
    }

    static func putApiRequest(from router: RestRouter) throws -> Data? {
        var data: Data?
        do {
            data = try JSONSerialization.data(
                withJSONObject: router.parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
        }
        return data
    }

    static func deleteApiRequest(from router: RestRouter) throws -> Data? {
        var data: Data?
        do {
            data = try JSONSerialization.data(
                withJSONObject: router.parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
        }
        return data
    }

    static func patchApiRequest(from router: RestRouter) throws -> Data? {
        var data: Data?
        do {
            data = try JSONSerialization.data(
                withJSONObject: router.parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
        }
        return data
    }
}
