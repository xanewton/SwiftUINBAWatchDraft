//
//  SwiftUINBAWatchDraftApp.swift
//  SwiftUINBAWatchDraft WatchKit Extension
//
//  Created by newtan on 2021-02-16.
//

import SwiftUI

@main
struct SwiftUINBAWatchDraftApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
