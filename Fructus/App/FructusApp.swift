//
//  FructusApp.swift
//  Fructus
//
//  Created by Lore P on 09/03/2023.
//

import SwiftUI

@main
struct FructusApp: App {
  
  @AppStorage("isOnboarding") var isOnboarding = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        Onboarding()
      } else {
        ContentView()
      }
    }
  }
}

