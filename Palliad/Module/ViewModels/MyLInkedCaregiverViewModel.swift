//
//  MyLInkedCaregiverViewModel.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 28/2/25.
//

import Foundation

class MyLInkedCaregiverViewModel: ObservableObject {

    @Published var myLinkedCaregivers: [MyLinkedCaregiver] = []
    @Published var isLoading = false

    init() {
        fetchLinkedCaregivers()

    }

    func fetchLinkedCaregivers() {
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
        self.myLinkedCaregivers = MyLinkedCaregiverMockData.sampleData

    }

}
