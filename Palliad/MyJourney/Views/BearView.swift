//
//  BearView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 10/2/25.
//

import Combine
import SwiftUI

struct BearView: View {

    @Binding var showView: Bool

    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {

                Spacer(minLength: geometry.size.height * 0.62)

                VStack(alignment: .center) {
                    HStack {
                        Spacer(minLength: geometry.size.width * 0.6)
                        if !showView {
                            VStack(spacing: -2) {
                                Circle().fill(Color(hex: 0xded988)).overlay(
                                    Text("Hello friend!\nLet's talk!").font(
                                        .system(size: 10)
                                    ).lineLimit(3).padding()
                                ).frame(width: 100, height: 100)
                                Image(systemName: "arrowtriangle.down.fill")
                                    .resizable()
                                    .foregroundColor(Color(hex: 0xded988))
                                    .frame(width: 20, height: 20)

                                    .onTapGesture {
                                        showView.toggle()
                                    }

                            }
                        }
                        Spacer()
                    }

                    HStack(alignment: .center) {
                        Spacer(minLength: 200)
                        ARViewContainer(modelName: "Teddyolda")
                            .frame(minWidth: 200, minHeight: 200)
                            .onAppear()
                            .onTapGesture {
                                showView.toggle()
                            }

                    }
                }
            }
        }
    }
}

#Preview {
    BearView(showView: .constant(true))
}
