//
//  EmailVerificationViewModel.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 10/2/25.
//

import Combine
import Foundation

@MainActor
class EmailVerificationViewModel: ObservableObject {

    let emailVerificationSubject = PassthroughSubject<Void, Never>()

    func emailVerifiaction() {
        UserSettings.shared.isRegisteredVerified = true
        emailVerificationSubject.send()

    }

}
