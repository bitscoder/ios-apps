//
//  SwiftUI_WeatherApp.swift
//  SwiftUI-Weather
//
//  Created by Ruturaj Chintawar on 11/15/23.
//

import SwiftUI

@main
struct SwiftUI_WeatherApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
