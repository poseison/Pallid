//
//  PalliadApp.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import SwiftUI
import SwiftData

@main
struct PalliadApp: App {
    
    @ObservedObject var router = AppRouter()
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) { // router is injected to navigation stack
                ContentView()
                .navigationDestination(for: Destination.self) { destination in
                        switch destination {
                        case .loginView:
                            LoginView()
                        case .signUpView:
                            LoginView()
                        case .emailVerificationView:
                            EmailVerification()
                        case .homeView:
                            HomeView()
                        case .myappointments:
                            AppointmentsView()
                        case .mycaregivers:
                            MyLInkedCaregiverView()
                        case .myjourneyView:
                            MyJourneyView()
                        case .mydoctors:
                            MyDoctorsView()
                        case .myPatients:
                            MyPatientsView()
                        case .bookAppointment:
                            BookAppointmentView()
                         }
                
                        
                    }
                    
            }
            .environmentObject(router)
        }}
    }

