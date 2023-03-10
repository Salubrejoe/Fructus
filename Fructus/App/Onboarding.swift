//
//  Onboarding.swift
//  Fructus
//
//  Created by Lore P on 09/03/2023.
//

import SwiftUI

struct Onboarding: View {
  // MARK: - PROPERTIES
  var fruits: [Fruit] = fruitsData
  
  
  // MARK: - BODY
  var body: some View {
    TabView {
      ForEach(fruits[0...5]) { fruit in
        FruitCard(fruit: fruit)
      }
      
      
    }//: TABVIEW
    .tabViewStyle(.page(indexDisplayMode: .always))
    .padding(.vertical, 20)
  }
}



// MARK: - Preview
struct Onboarding_Previews: PreviewProvider {
  static var previews: some View {
    Onboarding()
      .previewDevice("iPhone 14 Pro Max")
  }
}

