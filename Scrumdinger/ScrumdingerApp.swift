//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Andrew Abotomey on 22/1/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
