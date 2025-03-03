//
//  ContentView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var router: AppRouter

    @State private var selectedTab = 0

    var body: some View {
        VStack(alignment: .center) {
            Spacer()

            Text("PALLIAKID").font(.headline)
            Image(.palliakidLogo)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 150, maxHeight: 150)

            HStack(alignment: .center) {
                ForEach(0..<2) { index in
                    Button(action: {
                        withAnimation {
                            selectedTab = index
                        }
                    }) {
                        VStack {
                            Text("" + (index == 0 ? "Login" : "Register"))
                                .foregroundColor(
                                    selectedTab == index ? .black : .green)
                            if selectedTab == index {
                                Rectangle()
                                    .frame(height: 3)
                                    .foregroundColor(.green)
                                    .transition(.scale)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 30)

                }
            }
            Divider()
            Image(systemName: "")
            TabView(selection: $selectedTab) {
                LoginView()
                RegisterView()
            }.onAppear {
                if UserSettings.shared.isRegisteredVerified {
                    selectedTab = 0
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
