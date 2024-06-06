//
//  AthenaApp.swift
//  Athena
//
//  Created by student on 5/16/24.
//

import SwiftUI
import SwiftData

@main
struct AthenaApp: App {
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
            SearchView()
        }
        .modelContainer(sharedModelContainer)
    }
}
