//
//  ServiceLayer.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

class ServiceLayer {
    static func request<T: Codable>(router: RestRouter) async throws -> T {
        let request = try AppNetworking.buildRequest(from: router)
        let data = try await NetworkManager.requestData(for: request)
        let responseObject: T = try JSONDecoderService.decode(data: data)
        return responseObject
    }
}
