//
//  settingsView.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 25/03/2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
            
                List {
                    Section(header: Text("Notification")) {
                        
                        Toggle(isOn: .constant(true)) {
                            Text("Frequency")
                        }
                        Toggle(isOn: .constant(false)) {
                            Text("Pause Notification")
                        }
                       
                    }
                    Section {
                        Text("Account")
                        Text("Interests")
                    }
                    
                    Section {
                        HStack {
                            Text("Frequency")
                            Spacer()
                            Image(systemName: "arrow.up.right")
                        }
                        HStack {
                            Text("Frequency")
                            Spacer()
                            Image(systemName: "arrow.up.right")
                        }
                        HStack {
                            Link("Apple", destination: URL(string: "https://www.apple.com")!)
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "arrow.up.right")
                        }
                        HStack {
                            Text("Frequency")
                            Spacer()
                            Image(systemName: "arrow.up.right")
                        }
                        HStack {
                            Text("Frequency")
                            Spacer()
                            Image(systemName: "arrow.up.right")
                        }
                    }
                    Section {
                        NavigationLink(destination: AccountView()) {
                            Text("Place Order")
                                
                        }
                    }
                    
                }
                .background(Color.red)
                .listStyle(InsetGroupedListStyle())
                
               

                .navigationBarTitle(Text("Settings")
                                      
                )
        
        
      
      
        

    }
}

struct settingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
