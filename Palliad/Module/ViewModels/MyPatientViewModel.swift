//
//  MyPatientViewModel.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 2/3/25.
//
import Foundation

class MyPatientViewModel: ObservableObject {
    @Published var myPatients: [MyPatient] = []
    @Published var isLoading = false

    init() {
        fetchMyPatients()
    }

    func fetchMyPatients() {
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
        self.myPatients =
            MyPatientsMockData.sampleData

    }

}
