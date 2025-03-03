//
//  MyDoctorsView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 1/3/25.
//

import SwiftUI

struct MyDoctorsView: View {
    @StateObject var viewModel = MyDoctorsViewModel()

    var body: some View {
        if viewModel.isLoading {
            ProgressView()
        } else {

            ScrollView {
                LazyVStack(alignment: .leading, spacing: 5) {
                    Section {
                        ForEach(viewModel.myDoctors, id: \.self) { doctor in
                            MyDoctorCell(myDoctor: doctor)

                        }
                    } header: {
                        Text("MY Doctors").font(.title).padding()
                    }
                }
            }
            .background(Color(uiColor: .systemGray5))

        }
    }
}

#Preview {
    MyDoctorsView()
}
