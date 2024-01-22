//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Andrew Abotomey on 22/1/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
