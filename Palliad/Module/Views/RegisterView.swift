//
//  RegisterView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 3/2/25.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var router: AppRouter

    @AppStorage("username") var username: String = "chlaliotis@gmail.com"
    @AppStorage("passwordd") var password: String = "pwd123"

    @StateObject private var viewModel = RegisterViewModel()

    @Namespace private var animationNamespace
    @State private var isExpanded = false
    @State private var selection = "Patient"
    let roles = ["Patient", "Caregiver ", "Dctor"]

    var body: some View {

        ZStack {

            Form {
                Group {
                    Section {
                        Picker("Please select a role ", selection: $selection) {
                            ForEach(roles, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                }
                Group {
                    Section {
                        InputFieldView(
                            data: $viewModel.username,
                            title: "Entter your email")

                        InputFieldView(
                            data: $viewModel.password, title: "Password")

                        InputFieldView(
                            data: $viewModel.password, title: "Reenter Password"
                        )
                    }
                }

                Group {
                    if viewModel.isLoading {
                        ProgressView()
                    } else {
                        Section {
                            Button("Register") {
                                viewModel.register(
                                    userName: "Guest", passwd: "password123")

                            }.buttonStyle(BlueButton()).frame(
                                maxWidth: .infinity)

                        }
                    }
                }
            }

        }.tag(1)
            .onReceive(viewModel.registerSubject) {
                router.push(to: Destination.emailVerificationView)
            }

    }
}

#Preview {
    RegisterView()
}
