//
//  CrispThemeCrashApp.swift
//  CrispThemeCrash
//
//  Created by Tico on 21.6.2023.
//

import SwiftUI
import Crisp

@main
struct CrispThemeCrashApp: App {
    let crispAppID = "insert app id here"
        
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    CrispSDK.configure(websiteID: crispAppID)
                }
        }
    }
}
