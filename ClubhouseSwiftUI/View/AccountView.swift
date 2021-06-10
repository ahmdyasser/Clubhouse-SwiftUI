//
//  AccountView.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 26/03/2021.
//

import SwiftUI

struct AccountView: View {
    var body: some View  {
       
        NavigationView {
            List {
                Section {
                    Button(action: {
                        
                    }, label: {
                     
                        HStack {
                            Spacer()
                            Text("Disconnect Twitter")
                            Spacer()
                        }
                        
                    })
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Connect Instagram")
                            Spacer()
                        }
                        
                    })
                    
                }
                Button(action: {
                    
                }, label: {
                    HStack {
                        Spacer()
                        Text("Deactivate Account")
                            .foregroundColor(.red)
                        Spacer()
                    }
                        
                })
            }
            .listStyle(InsetGroupedListStyle())
            
            
       
       
        }.navigationBarTitle("Account")
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
}
