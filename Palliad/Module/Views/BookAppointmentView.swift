//
//  BookAppointmentView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 2/3/25.
//

import SwiftUI

struct BookAppointmentView: View {

    @State private var selectedTime = Date.now

    @State var value = ""
    var dropDownDoctorItem: [String] = ["Doctor 1", "Doctor 2", "Doctor 3"]
    var dropDownPatientItem: [String] = ["Patient 1", "Patient 2", "Patient 3"]
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                TextField("Select Doctor", text: $value)
                    .textFieldStyle(.roundedBorder)

                Menu {
                    ForEach(dropDownDoctorItem, id: \.self) { item in
                        Button(item) {
                            self.value = item
                        }
                    }
                } label: {
                    VStack(spacing: 5) {
                        Image(systemName: "chevron.down")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }

            }.padding(.horizontal)
            HStack {
                TextField("Select Patient", text: $value)
                    .textFieldStyle(.roundedBorder)

                Menu {
                    ForEach(dropDownPatientItem, id: \.self) { item in
                        Button(item) {
                            self.value = item
                        }
                    }
                } label: {
                    VStack(spacing: 5) {
                        Image(systemName: "chevron.down")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }

            }.padding(.horizontal)
            VStack {

                DatePicker("Please select a date", selection: $selectedTime)

                Text("You have selected: \(selectedTime)")
            }
            .padding()
            Button("Submit") {}.buttonStyle(BlueButton())

        }

    }
}

#Preview {
    BookAppointmentView()
}
