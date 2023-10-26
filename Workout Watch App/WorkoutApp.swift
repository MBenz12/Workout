//
//  WorkoutApp.swift
//  Workout Watch App
//
//  Created by admin on 10/26/23.
//

import SwiftUI

@main
struct Workout_Watch_AppApp: App {
    @StateObject private var workoutManager = WorkoutManager()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                StartView()
            }
            .sheet(isPresented: $workoutManager.showingSummaryView) {
                SummaryView()
            }
            .environmentObject(workoutManager)
            
        }
    }
}
