//
//  LoginView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var router: AppRouter

    @StateObject private var viewModel = LoginViewModel()

    var body: some View {
        VStack(spacing: 20) {
            InputFieldView(data: $viewModel.username, title: "Username")

            InputFieldView(data: $viewModel.password, title: "Password")
                .textContentType(.password)

            if viewModel.isLoading {
                ProgressView()
            } else {
                Button("Login") {
                    viewModel.login()
                    if viewModel.isLoggedIn {
                        router.push(to: Destination.homeView)
                    }
                }.buttonStyle(BlueButton())
                Spacer()
                Button(" Forgot your Password ? ") {

                }
                .padding()
                .frame(width: 250, height: 30)
                .background(.clear)
                .foregroundColor(.black)
                .buttonStyle(.plain)
                .cornerRadius(10)

                if let error = viewModel.error {
                    Text(error)
                        .foregroundColor(.red)
                        .padding()
                }
                Spacer()
            }
        }
        .tag(0)
        .onReceive(viewModel.loginSubject) {
            withAnimation {
                router.push(to: Destination.homeView)
            }
        }
        .padding()

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
