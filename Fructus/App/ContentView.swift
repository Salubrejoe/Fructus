//
//  ContentView.swift
//  Fructus
//
//  Created by Lore P on 09/03/2023.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  var fruits: [Fruit] = fruitsData
  
  @State private var isShowingSetting = false
  
  
  // MARK: - BODY
  var body: some View {
    
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { fruit in
          NavigationLink(destination: FruitDetail(fruit: fruit)) {
            FruitRow(fruit: fruit)
              .padding(.vertical, 4)
            
          }//: NLINK
        }
      }//: LIST
      .navigationBarTitle("Fruits")
      .toolbar {
        Button {
          isShowingSetting = true
        } label: {
          Image(systemName: "slider.horizontal.3")
            .fontWeight(.heavy)
        }
        .padding()
        .sheet(isPresented: $isShowingSetting) {
          Settings()
        }
      }
      
      
      
      
    }//: NVIEW
  }
}




// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}



