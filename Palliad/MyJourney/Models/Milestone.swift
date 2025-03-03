//
//  Milestone.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 11/2/25.
//

import Foundation

struct Milestone: Codable, Identifiable {
    var id = UUID()

    let task1: String?
    let task2: String?
    let dueDate: Date?
    let isCompletedTask1: Bool?
    let isCompletedTask2: Bool?

}
