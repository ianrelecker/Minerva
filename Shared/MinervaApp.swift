//
//  MinervaApp.swift
//  Shared
//
//  Created by ian on 12/23/21.
//

import SwiftUI

@main
struct MinervaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
