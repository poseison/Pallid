//
//  MyPatients.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 2/3/25.
//

import Foundation

struct MyPatient: Codable, Hashable {
    var id = UUID()
    let linkedUser: User?
    let homeAddress: String?

}

struct MyPatientsMockData {
    static let sampleData: [MyPatient] = [
        MyPatient(linkedUser: nil, homeAddress: nil),
        MyPatient(linkedUser: nil, homeAddress: nil),
    ]
}
