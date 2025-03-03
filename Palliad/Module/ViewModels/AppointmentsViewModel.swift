//
//  AppointmentsViewModel.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 28/2/25.
//

import Foundation

class AppointmentsViewModel: ObservableObject {

    @Published var appointments: [Appointment] = []
    @Published var isLoading = false

    init() {
        fetchAppointments()

    }

    func fetchAppointments() {
        self.isLoading = true

        Task {
            print("Starting the task")

            try await Task.sleep(
                until: .now + .seconds(5),
                tolerance: .seconds(2),
                clock: .suspending
            )
        }
        print("Continuing the task")
        self.isLoading = false
        self.appointments = AppointmentMockData.sampleAppointments

    }
}
