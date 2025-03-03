//
//  RegisterViewModel.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 3/2/25.
//

import Combine
import Foundation

@MainActor
class RegisterViewModel: ObservableObject {
    @Published var isRegistered: Bool = false
    @Published var user: User? = nil
    @Published var username: String = "Guest"
    @Published var password: String = "Password123"

    @Published var isLoading: Bool = false
    let registerSubject = PassthroughSubject<Void, Never>()

    func register(userName: String, passwd: String) {
        Task {
            print("Starting the task")
            isLoading = true

            try await Task.sleep(
                until: .now + .seconds(5),
                tolerance: .seconds(2),
                clock: .suspending
            )

            print("Continuing the task")
            isLoading = false
            registerSubject.send()
        }
    }

}
