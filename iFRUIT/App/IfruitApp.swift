//
//  iFRUITApp.swift
//  iFRUIT
//
//  Created by SOG on 5/4/22.
//

import SwiftUI

@main
struct IfruitApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardView()
            } else {
                ContentView()
            }
            
        }
    }
}
