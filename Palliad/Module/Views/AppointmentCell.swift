//
//  AppointmentCell.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 28/2/25.
//

import SwiftUI

struct AppointmentCell: View {
    let appointment: Appointment

    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Text("Mock ")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.leading)
            Image(systemName: "calendar")
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .padding(.vertical, 10)

            VStack(alignment: .leading, spacing: 5) {
                Text("ApointmentType ")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)

                Text("For ")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)

                Text("Date : \(appointment.dateScheduled)")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
        }
        .frame(
            minWidth: /*@START_MENU_TOKEN@*/ 0 /*@END_MENU_TOKEN@*/,
            maxWidth: /*@START_MENU_TOKEN@*/ .infinity /*@END_MENU_TOKEN@*/,
            minHeight: /*@START_MENU_TOKEN@*/ 0 /*@END_MENU_TOKEN@*/,
            maxHeight: /*@START_MENU_TOKEN@*/ .infinity /*@END_MENU_TOKEN@*/,
            alignment: .leading
        )
        .background(Color.white)
        .cornerRadius(10.0)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 0)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
    }
}

#Preview {
    AppointmentCell(
        appointment: Appointment(
            appointMentType: "doctor", forOther: "Roulis", dateScheduled: Date()
        ))
}
