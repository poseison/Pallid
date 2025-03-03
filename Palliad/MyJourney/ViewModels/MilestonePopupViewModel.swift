//
//  MilestonePopupViewModel.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 11/2/25.
//

import Combine
import Foundation

@MainActor
class MilestonePopupViewModel: ObservableObject {
    @Published var milestone: Milestone? = Milestone(
        task1: "Task1", task2: "Task2", dueDate: nil, isCompletedTask1: nil,
        isCompletedTask2: nil)

    func deleteMilestone() throws {

    }
}
