//
//  LizBApp.swift
//  LizB
//
//  Created by Christian Bain on 11/18/20.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Launching App...")
        FirebaseApp.configure()
        return true
    }
}

@main
struct LizBApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
