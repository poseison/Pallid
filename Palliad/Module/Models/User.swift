//
//  User.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 6/2/25.
//

import Foundation

enum UserRole: Codable {
    case patient, caregiver, doctor

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let role = try? container.decode(String.self)
        switch role {
        case "patient": self = .patient
        case "caregiver": self = .caregiver
        case "doctor": self = .doctor
        default:
            self = .patient
        }

    }
}

struct User: Codable, Hashable {
    var id = UUID()
    let username: String?
    let fullName: String?
    let email: String?
    let avatarURL: String?
    let role: UserRole

    enum CodingKeys: String, CodingKey {
        case username
        case fullName = "full_name"
        case email
        case avatarURL = "avatar_url"
        case role
    }

}
