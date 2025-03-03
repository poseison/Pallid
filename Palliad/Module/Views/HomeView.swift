//
//  HomeView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: AppRouter

    var body: some View {
        customView()
    }

    @ViewBuilder
    func customView() -> some View {
        if UserSettings.shared.user?.role == .patient {
            VStack(spacing: 30) {
                Button {
                    router.push(to: Destination.myjourneyView)
                } label: {
                    Text("My journey")
                }

                Button {
                    router.push(to: Destination.myappointments)
                } label: {
                    Text("My appointments")
                }

                Button {
                    router.push(to: Destination.mycaregivers)
                } label: {
                    Text("My caregivers")
                }
            }

        } else if UserSettings.shared.user?.role == .caregiver {
            VStack(spacing: 30) {
                Button {
                    router.push(to: Destination.mydoctors)
                } label: {
                    Text("My Doctors")
                }

                Button {
                    router.push(to: Destination.myPatients)
                } label: {
                    Text("My patients")
                }

                Button {
                    router.push(to: Destination.bookAppointment)
                } label: {
                    Text("Book an appointment")
                }
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
