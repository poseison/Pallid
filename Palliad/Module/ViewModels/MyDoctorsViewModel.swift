//
//  MyDoctorsViewModel.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 1/3/25.
//

import Foundation

class MyDoctorsViewModel: ObservableObject {
    @Published var myDoctors: [MyDoctor] = []
    @Published var isLoading = false

    init() {
        fetchMyDoctors()
    }

    func fetchMyDoctors() {
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
        self.myDoctors =
            MyDoctorMockData.sampleData

    }

}
