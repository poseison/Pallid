//
//  MyLInkedCaregiverView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 28/2/25.
//

import SwiftUI

struct MyLInkedCaregiverView: View {
    @StateObject var viewModel = MyLInkedCaregiverViewModel()
    var body: some View {
        if viewModel.isLoading {
            ProgressView()
        } else {

            ScrollView {
                LazyVStack(alignment: .leading, spacing: 5) {
                    Section {
                        ForEach(viewModel.myLinkedCaregivers, id: \.self) {
                            caregiver in
                            MyLinkedCaregiverCell(mylinkedCaregiver: caregiver)

                        }
                    } header: {
                        Text("MY caregivers").font(.title).padding()
                    }
                }
            }
            .background(Color(uiColor: .systemGray5))

        }
    }
}

#Preview {
    MyLInkedCaregiverView()
}
