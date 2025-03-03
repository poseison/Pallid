//
//  MyDoctors.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 1/3/25.
//

import Foundation

struct MyDoctor: Codable, Hashable {
    var id = UUID()
    let linkeduser: User?
    let phoneToUse: String?
    let hospital: String

}

struct MyDoctorMockData {
    static let sampleData: [MyDoctor] = [
        MyDoctor(
            linkeduser: nil, phoneToUse: "6977399368", hospital: "EVANGELISMOS"),
        MyDoctor(
            linkeduser: nil, phoneToUse: "6977399368", hospital: "EVANGELISMOS"),
    ]

}
