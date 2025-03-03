//
//  LoginViewModel.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import Combine
import Foundation

@MainActor
class LoginViewModel: ObservableObject {

    @Published var username: String = "chlaliotis@gmail.com"
    @Published var password: String = "pwd123"
    @Published var isLoading: Bool = false
    @Published var isLoggedIn: Bool = false
    @Published var error: String?

    let loginSubject = PassthroughSubject<Void, Never>()

    var isValid: Bool {
        !username.isEmpty && !password.isEmpty
    }

    func login() {

        guard isValid else { return }

        isLoading = true
        error = nil
        Task {
            print("Starting the task")

            try await Task.sleep(
                until: .now + .seconds(5),
                tolerance: .seconds(2),
                clock: .suspending
            )

            print("Continuing the task")

            UserSettings.shared.user = User(
                username: username, fullName: "Charilaos Laliotis",
                email: "chlaliotis@gmail.com", avatarURL: nil, role: .caregiver)
            loginSubject.send()
            isLoading = false
            isLoggedIn = true

        }

    }

}
