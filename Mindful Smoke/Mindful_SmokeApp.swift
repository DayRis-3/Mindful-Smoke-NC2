//
//  Mindful_SmokeApp.swift
//  Mindful Smoke
//
//  Created by M Irsyad R on 22/05/23.
//

import SwiftUI

@main
struct Mindful_SmokeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
