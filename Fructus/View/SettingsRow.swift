//
//  SettingsRow.swift
//  Fructus
//
//  Created by Lore P on 10/03/2023.
//

import SwiftUI

struct SettingsRow: View {
  
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
  var body: some View {
    
    
    VStack {
      Divider().padding(.vertical, 4)
      
      HStack {
        Text(name)
          .foregroundColor(.gray)
        Spacer()
        if content != nil {
          Text(content!)
        } else if linkLabel != nil && linkDestination != nil {
          Link(destination: URL(string: "https://\(linkDestination!)")!,
               label: { Text(linkLabel!) })
          Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
        } else {
          EmptyView()
        }
      }//: HSTACK
    }
  }
}

struct SettingsRow_Previews: PreviewProvider {
  static var previews: some View {
    SettingsRow(name: "Developer", content: "John / Jane")
      .previewLayout(.fixed(width: 375, height: 60))
      .padding()
    SettingsRow(name: "Website", linkLabel: "Wiki", linkDestination: "wikipedia.com")
      .previewLayout(.fixed(width: 375, height: 60))
      .padding()
      .preferredColorScheme(.dark)
  }
}

