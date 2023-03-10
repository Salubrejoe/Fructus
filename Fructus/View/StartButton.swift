//
//  StartButton.swift
//  Fructus
//
//  Created by Lore P on 09/03/2023.
//

import SwiftUI

struct StartButton: View {
  // MARK: - PROPERTIES
  @AppStorage("isOnboarding") var isOnboarding: Bool?
  
  
  // MARK: - BODY
  var body: some View {
    Button {
      isOnboarding = false
    } label: {
      HStack(spacing: 8) {
        Text("Start")
        
        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
        
      }//: HSTACK
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(
        Capsule()
          .strokeBorder(.white, lineWidth: 1.25)
      )
    }//: BUTTON
    .accentColor(.white)
    
  }
}


// MARK: - Preview
struct StartButton_Previews: PreviewProvider {
  static var previews: some View {
    StartButton()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

