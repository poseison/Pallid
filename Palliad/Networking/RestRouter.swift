//
//  RestRouter.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import Foundation

enum RestRouter {
    case restSignInApi(id: String)
    case restSignOutApi
    case restRegister

    var scheme: String {
        switch self {
        case .restSignInApi, .restRegister:
            return "https"
        case .restSignOutApi:
            return "https"
        }
    }

    var host: String {
        switch self {
        case .restSignInApi, .restSignOutApi, .restRegister:
            return "api.restful-api.dev"
        }

    }

    var path: String {
        switch self {
        case .restSignInApi, .restSignOutApi:
            return "/signin"
        case .restRegister:
            return "/register"
        }
    }

    var method: String {
        switch self {
        case .restSignInApi, .restSignOutApi:
            return "GET"
        case .restRegister:
            return "Post"

        }
    }

    var parameters: [String: Any] {
        switch self {
        case .restSignInApi, .restSignOutApi, .restRegister:
            return [:]

        }
    }

    var query: [URLQueryItem] {
        switch self {
        case .restSignInApi:
            return []
        case .restSignOutApi:
            return []
        case .restRegister:
            return []
        }
    }

}
