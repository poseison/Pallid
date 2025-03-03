//
//  MyLinkedCaregiver.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 28/2/25.
//

import Foundation

struct MyLinkedCaregiver: Codable, Hashable {
    var id = UUID()
    let linkeduser: User?
    let phoneToUse: String?
}

struct MyLinkedCaregiverMockData {
    static let sampleData: [MyLinkedCaregiver] = [
        MyLinkedCaregiver(linkeduser: nil, phoneToUse: "6977399368"),
        MyLinkedCaregiver(linkeduser: nil, phoneToUse: "6977399368"),
    ]

}
