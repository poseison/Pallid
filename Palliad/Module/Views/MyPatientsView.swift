//
//  MyPatientsView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 2/3/25.
//

import SwiftUI

struct MyPatientsView: View {
    @StateObject var viewModel = MyPatientViewModel()

    var body: some View {
        if viewModel.isLoading {
            ProgressView()
        } else {

            ScrollView {
                LazyVStack(alignment: .leading, spacing: 5) {
                    Section {
                        ForEach(viewModel.myPatients, id: \.self) { patient in
                            MyPatientCell(myPatient: patient)

                        }
                    } header: {
                        Text("My Patients").font(.title).padding()
                    }
                }
            }
            .background(Color(uiColor: .systemGray5))

        }
    }
}

#Preview {
    MyPatientsView()
}
