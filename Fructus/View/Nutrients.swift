//
//  Nutrients.swift
//  Fructus
//
//  Created by Lore P on 10/03/2023.
//

import SwiftUI

struct Nutrients: View {
  // MARK: - PROPERTIES
  var fruit: Fruit
  let nutrients: [String] = [
    "Energy",
    "Sugar",
    "Fat",
    "Protein",
    "Vitemins",
    "Minerals"
  ]
  
  // MARK: - BODY
  var body: some View {
    GroupBox() {
      DisclosureGroup("Nutritional value per 100g") {
        
        ForEach(0..<nutrients.count, id: \.self) { index in
          
          Divider().padding(.vertical, 2)
          
          
          HStack {
            Group {
              Image(systemName: "info.circle")
              Text(nutrients[index])
            }
            .foregroundColor(fruit.gradientColors[1])
            .font(.body.bold())
            Spacer(minLength: 25)
            Text(fruit.nutrition[index])
              .multilineTextAlignment(.trailing)
          }//: Hstack
        }
      }//: GROUP
    }//: BOX
  }
}


// MARK: - PREVIEW
struct Nutrients_Previews: PreviewProvider {
  static var previews: some View {
    Nutrients(fruit: fruitsData[0])
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}

