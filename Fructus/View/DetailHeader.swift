//
//  DetailHeader.swift
//  Fructus
//
//  Created by Lore P on 10/03/2023.
//

import SwiftUI

struct DetailHeader: View {
  
  @State private var isAnimatingImage = false
  
  var fruit: Fruit
  
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
      
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: -6, y: 8)
        .padding(.vertical, 20) //iPad optimization
        .scaleEffect(isAnimatingImage ? 1 : 0.6)
    }//: ZSTACK
    .frame(height: 440)
    .onAppear() {
      withAnimation(.easeOut(duration: 0.7)) {
        isAnimatingImage = true
      }
    }
  }
}

struct DetailHeader_Previews: PreviewProvider {
  static var previews: some View {
    DetailHeader(fruit: fruitsData[1])
      .previewLayout(.fixed(width: 375, height: 440))
  }
}


