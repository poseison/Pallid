//
//  AppRouter.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 2/2/25.
//

import SwiftUI

public enum Destination: Hashable {
    case loginView
    case signUpView
    case homeView
    case emailVerificationView
    case myjourneyView
    case myappointments
    case mycaregivers
    case mydoctors
    case myPatients
    case bookAppointment

}

final public class AppRouter: ObservableObject {
    @Published var navPath = NavigationPath()

    func push(to destination: any Hashable) {
        navPath.append(destination)
    }

    func pop() {
        navPath.removeLast()
    }

    func popToRooot() {
        navPath.removeLast(navPath.count)
    }

}
