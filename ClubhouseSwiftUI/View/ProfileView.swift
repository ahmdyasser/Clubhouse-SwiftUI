//
//  profileView.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 25/03/2021.
//

import SwiftUI

struct ProfileView: View {
    @State private var showHome = false
    var body: some View {
        if showHome {
            HomeView()
        } else {
        
                
                
                ZStack {
                        Rectangle()
                            .ignoresSafeArea()
                            .foregroundColor(Color("mainColor"))
                           
                        VStack(alignment: .leading) {
                            
                           
        //                    .padding(.vertical)
                            
                            Circle()
                                .scaledToFit()
                                .frame(width:80)
                            Text("Ahmad Yasser")
                                .padding(.vertical, 5)
                            Text("@ahmadyasser")
                            HStack(spacing: 35) {
                                Text("Followers")
                                Text("Following")
                                
                            }
                            .padding(.vertical)
                     
                                Text("Smarter than a smartphone dumber than Deumbledore.")
  
                            HStack {
                                Text("Twitter")
                                
                                Text("Instagram")
                            }
                            .padding(.vertical)
                            
                            
                            HStack {
                                Circle()
                                    .scaledToFit()
                                    .frame(height: 40)
                                
                                VStack(alignment: .leading) {
                                    Text("Joined 21 Feb 2021")
                                    Text("Nnominated by Abdulrahman Gamal")
                                }
                            }
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Member of")
                                Circle()
                                    .scaledToFit()
                                    .frame(height: 30)
                            }
                            .padding(.vertical)
                           
                            
                            Spacer()
                   
                        }
                        .padding(.vertical, 100)
                        .padding(.horizontal)
                        .ignoresSafeArea()

                       
                    }
//                .navigationBarHidden(true)
//                .toolbar {
//                    Button("hi") {
//                        print("hi")
//                    }
//                }
            
            
            
        }
        
        
    }
}
func shareAction() {
        guard let data = URL(string: "https://www.joinclubhouse.com/@ahmadyasser") else {
            return
        }
        let av = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
