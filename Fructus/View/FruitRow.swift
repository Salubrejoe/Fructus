//
//  FruitRow.swift
//  Fructus
//
//  Created by Lore P on 10/03/2023.
//

import SwiftUI

struct FruitRow: View {
  // MARK: - PROPERTIES
  
  var fruit: Fruit
  
  
  // MARK: - BODY
  var body: some View {
    HStack {
      Image(fruit.image)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: -2, y: 2)
        .background(.linearGradient(Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(fruit.title)
          .font(.title)
          .fontWeight(.bold)
        
        Text(fruit.headline)
          .font(.caption)
          .foregroundColor(.secondary)
        
      }//: VSTACK
      
    }//: HSTACK
  }
}


// MARK: - PREVIEW
struct FruitRow_Previews: PreviewProvider {
  static var previews: some View {
    FruitRow(fruit: fruitsData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

