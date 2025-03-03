//
//  Appointment.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 28/2/25.
//

import Foundation

struct Appointment: Decodable, Hashable {
    var id = UUID()
    let appointMentType: String?
    let forOther: String?
    let dateScheduled: Date?
}

struct AppointmentMockData {
    static let sampleAppointments = [
        Appointment(appointMentType: nil, forOther: nil, dateScheduled: nil),
        Appointment(appointMentType: nil, forOther: nil, dateScheduled: nil),
        Appointment(appointMentType: nil, forOther: nil, dateScheduled: nil),
        Appointment(appointMentType: nil, forOther: nil, dateScheduled: nil),
        Appointment(appointMentType: nil, forOther: nil, dateScheduled: nil),
        Appointment(appointMentType: nil, forOther: nil, dateScheduled: nil),
    ]

}
