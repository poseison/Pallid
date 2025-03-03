//
//  AppointmentsView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 28/2/25.
//

import SwiftUI

struct AppointmentsView: View {
    @StateObject var viewModel = AppointmentsViewModel()

    var body: some View {
        if viewModel.isLoading {
            ProgressView()
        } else {

            ScrollView {
                LazyVStack(alignment: .leading, spacing: 5) {
                    Section {
                        ForEach(viewModel.appointments, id: \.self) {
                            appointment in
                            AppointmentCell(appointment: appointment)

                        }
                    } header: {
                        Text("My appointments").font(.title).padding()
                    }
                }
            }
            .background(Color(uiColor: .systemGray5))

        }
    }
}

#Preview {
    AppointmentsView()
}
