//
//  Settings.swift
//  Fructus
//
//  Created by Lore P on 10/03/2023.
//

import SwiftUI

struct Settings: View {
  // MARK: - PROPERTIES
  @Environment(\.dismiss) var dismiss
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView {
        VStack(spacing: 20) {
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }//: VSTACK
        .navigationTitle("Text Settings")
        .navigationBarItems(
          trailing:
            
            GroupBox {
              Button(action: {
                dismiss()
              } , label: {
                Image(systemName: "xmark")
                  .fontWeight(.heavy)
                  .foregroundColor(.primary)
              })
            }
            .frame(width: 40, height: 40)
            .cornerRadius(20)
        )
        
        
        .padding()
      }//: SCROLLVIEW
    }//: NVIEW
    
    
    
  }
}



// MARK: - PREVIEW
struct Settings_Previews: PreviewProvider {
  static var previews: some View {
    Settings()
  }
}



