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
  @AppStorage("isOnboarding") var isOnboarding = false
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView {
        VStack(spacing: 20) {
          // MARK: - SECTION 1
          GroupBox(
            label:
              SettingsLabelComponent(labelText: "Fructus", labelImage: "info.circle"))
          {
            Divider().padding(.vertical, 3)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Most fruit are naturally low in fat, sodium and calories. None have cholesterol. Fruits are a source of many essential nutrients, including potassium, dietary fibre and much more")
                .font(.footnote)
            }
          }
          
          // MARK: - SECTION 2
          
          GroupBox(
            label: SettingsLabelComponent(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical,4)
            
            Text("If you wish you can restart the application. Just toggle the switch in this box. That way the app starts the onboarding process and you will see the welcome screen again")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("RESTARTED!")
                  .fontWeight(.bold)
                  .foregroundColor(.green)
              } else {
                Text("RESTART")
                  .fontWeight(.bold)
                  .foregroundColor(.secondary)
              }
            }
            .padding()
            .background(
              Color(uiColor: .tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
          
          
          
          // MARK: - SECTION 3
          
          GroupBox(
            label: SettingsLabelComponent(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRow(name: "Developer", content: "Lore P")
            SettingsRow(name: "Designer", content: "Robert Petras")
            SettingsRow(name: "Compatibility", content: "iOS 16")
            SettingsRow(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            SettingsRow(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
            SettingsRow(name: "SwiftUI", content: "5.0")
            SettingsRow(name: "Version", content: "1.1.1")
          }
          
          
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



