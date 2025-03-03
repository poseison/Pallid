//
//  MyDoctorCell.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 1/3/25.
//

import SwiftUI

struct MyDoctorCell: View {
    let myDoctor: MyDoctor
    var body: some View {
        HStack(alignment: .center, spacing: 5) {

            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .background(.white)
                .foregroundStyle(.gray.gradient.opacity(0.5)).frame(
                    width: 150, height: 150)
            VStack(alignment: .leading, spacing: 5) {
                Text("Doctor : ")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)

                Text("Hspital: ")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)

                Text("Phone : ")
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
    MyDoctorCell(myDoctor: MyDoctorMockData.sampleData[0])
}
