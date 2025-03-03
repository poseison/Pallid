//
//  EmailVerification .swift
//  Palliad
//
//  Created by Charilaos Laliotis on 10/2/25.
//

import SwiftUI

struct EmailVerification: View {
    @EnvironmentObject var router: AppRouter

    @StateObject private var viewModel = LoginViewModel()

    var body: some View {
        ZStack {
            VStack {
                Text(
                    "An email verification link has been sent to your email. Please Verify"
                ).padding()
                Button("Back to Login") {
                    UserSettings.shared.isRegisteredVerified = true
                    router.popToRooot()
                }
            }
        }
    }
}

#Preview {
    EmailVerification()
}
