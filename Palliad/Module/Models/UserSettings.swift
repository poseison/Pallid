//
//  UserSettings.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 7/2/25.
//

import Foundation
import SwiftUI

@MainActor
class UserSettings: ObservableObject {

    static let shared = UserSettings()

    private init() {}

    @Published var user: User? = nil

    @Published var username: String =
        UserDefaults.standard.string(forKey: "username") ?? "guest"
    @Published var password: String =
        UserDefaults.standard.string(forKey: "password") ?? "pwd123"
    @Published var role: String =
        UserDefaults.standard.string(forKey: "role") ?? "patient"
    @Published var isRegisteredVerified: Bool = false

}
