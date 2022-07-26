//
//  trackeeApp.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 21/07/22.
//

import SwiftUI

@main
struct trackeeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//            NewLearningView()
            DashboardView()
        }
    }
}
