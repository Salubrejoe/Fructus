//
//  SettingsLabelComponent.swift
//  Fructus
//
//  Created by Lore P on 10/03/2023.
//

import SwiftUI

struct SettingsLabelComponent: View {
  var labelText: String
  var labelImage: String
  
  var body: some View {
    HStack {
      Text(labelText.uppercased())
        .fontWeight(.bold)
      Spacer()
      Image(systemName: labelImage)
    }
  }
}

struct SettingsLabelComponent_Previews: PreviewProvider {
  static var previews: some View {
    SettingsLabelComponent(labelText: "Fructus", labelImage: "info.circle")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

