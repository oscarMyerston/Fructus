//
//  FructusApp.swift
//  Fructus
//
//  Created by Oscar David Myerston Vega on 25/06/24.
//

import SwiftUI

@main
struct FructusApp: App {

    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
