//
//  SearchView.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 26/03/2021.
//

import SwiftUI
struct SearchView: View {
    @State private var name = ""
    @State private var isFollowing = false
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color("mainColor"))
                .ignoresSafeArea()
            VStack {
                TextField("Find People and Clubs", text: $name)
                    .font(.system(size: 20, design: .rounded))
                    
                    .padding(6)
                    .background(Color(.black))
                    .opacity(0.08)
                    .cornerRadius(12)
                    .padding()
                  
                    
                           
                VStack(alignment: .leading) {
                    
                    Text("PEOPLE TO FOLLOW")
                        .padding(.horizontal)
                        VStack {
                            ScrollView {
                                VStack {
                                    HStack {
                                        Circle()
                                            .scaledToFit()
                                            .frame(width: 50)
                                        VStack(alignment: .leading) {
                                            Text("Anas Hesham")
                                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                            Text("Political Science Student")
                                                .font(.system(size: 14, design: .rounded))
                                            
                                        }
                                        Spacer()
                                        Button(action: {
                                            
                                        }, label: {
                                            FollowingButton()
                                        })
                                    }
                                    
                                    HStack {
                                        Circle()
                                            .scaledToFit()
                                            .frame(width: 50)
                                        VStack(alignment: .leading) {
                                            Text("Khalil al-Anani")
                                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                            Text("أستاذ العلوم السياسية والعلاقات الدولية رأيي صواب يحتمل الخطأورأي غيري خطأ يحتمل الصواب.")
                                                .lineLimit(2)
                                                .font(.system(size: 14, design: .rounded))
                                            
                                        }
                                        Spacer()
                                        Button(action: {
                                            isFollowing.toggle()
                                        }, label: {
                                         
                                            NotFollowingButton()
                                        })
                                    }
                                    HStack {
                                        Circle()
                                            .scaledToFit()
                                            .frame(width: 50)
                                        VStack(alignment: .leading) {
                                            Text("Fatima Basyoni")
                                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                            Text("Political Science Student")
                                                .font(.system(size: 14, design: .rounded))
                                            
                                        }
                                        Spacer()
                                        Button(action: {
                                            isFollowing.toggle()
                                        }, label: {
                                            NotFollowingButton()
                                        })
                                    }
                                    
                                }.padding()
                            }
                        }
                        .background(
                      
                                Rectangle()
                                    .foregroundColor(Color("whiteColor"))
                                 
                                    .shadow(radius: 1, y: 1)
                                   
                              
                                
                            
                            
                        )
            
                    ScrollView {
                        VStack {
                            Spacer()
                            HStack(spacing: 15) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("🌿 Wellness")
                                                .font(.system(size: 20, design: .rounded))
                                            Text("Health, Psychedelics,\nMindfulness, Fitness")
                                                .font(.system(size: 13, design: .rounded))
                                                .foregroundColor(.black)
                                                .lineLimit(2)
                                            
                                            
                                        }
                                        .padding()
                                        Spacer()
                                    }
                                    
                                    
                                        
                                        
                                }
                                .background(Color.white)
                                
                                .cornerRadius(18)
                               
                                .shadow(radius: 1, y: 1)
                                VStack(alignment: .leading) {
                                    HStack() {
                                        VStack(alignment: .leading) {
                                            Text("🌿 Wellness")
                                                .font(.system(size: 20, design: .rounded))
                                            Text("Health, Psychedelics,\nMindfulness, Fitness")
                                                .font(.system(size: 13, design: .rounded))
                                                .foregroundColor(.black)
                                                .lineLimit(2)
                                            
                                            
                                        }
                                        .padding()
                                        Spacer()
                                    }
                                    
                                    
                                        
                                        
                                }
                                .background(Color.white)
                                
                                .cornerRadius(18)
                               
                                .shadow(radius: 1, y: 1)
                            }.padding(.horizontal)
                            HStack(spacing: 15) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("🌿 Wellness")
                                                .font(.system(size: 20, design: .rounded))
                                            Text("Health, Psychedelics,\nMindfulness, Fitness")
                                                .font(.system(size: 13, design: .rounded))
                                                .foregroundColor(.black)
                                                .lineLimit(2)
                                            
                                            
                                        }
                                        .padding()
                                        Spacer()
                                    }
                                    
                                    
                                        
                                        
                                }
                                .background(Color.white)
                                
                                .cornerRadius(18)
                               
                                .shadow(radius: 1, y: 1)
                                VStack(alignment: .leading) {
                                    HStack() {
                                        VStack(alignment: .leading) {
                                            Text("🌿 Wellness")
                                                .font(.system(size: 20, design: .rounded))
                                            Text("Health, Psychedelics,\nMindfulness, Fitness")
                                                .font(.system(size: 13, design: .rounded))
                                                .foregroundColor(.black)
                                                .lineLimit(2)
                                            
                                            
                                        }
                                        .padding()
                                        Spacer()
                                    }
                                    
                                    
                                        
                                        
                                }
                                .background(Color.white)
                                
                                .cornerRadius(18)
                               
                                .shadow(radius: 1, y: 1)
                            }.padding(.horizontal)
                            HStack(spacing: 15) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("🌿 Wellness")
                                                .font(.system(size: 20, design: .rounded))
                                            Text("Health, Psychedelics,\nMindfulness, Fitness")
                                                .font(.system(size: 13, design: .rounded))
                                                .foregroundColor(.black)
                                                .lineLimit(2)
                                            
                                            
                                        }
                                        .padding()
                                        Spacer()
                                    }
                                }
                                .background(Color.white)
                                
                                .cornerRadius(18)
                               
                                .shadow(radius: 1, y: 1)
                                VStack(alignment: .leading) {
                                    HStack() {
                                        VStack(alignment: .leading) {
                                            Text("🌿 Wellness")
                                                .font(.system(size: 20, design: .rounded))
                                            Text("Health, Psychedelics,\nMindfulness, Fitness")
                                                .font(.system(size: 13, design: .rounded))
                                                .foregroundColor(.black)
                                                .lineLimit(2)
                                            
                                            
                                        }
                                        .padding()
                                        Spacer()
                                    }
                                        
                                }
                                .background(Color.white)
                                
                                .cornerRadius(18)
                               
                                .shadow(radius: 1, y: 1)
                            }.padding(.horizontal)

                        }
                    }
                }
               
            }
            
            HStack {
                Text("Show more people")
                    
                    .font(.system(size: 15, design: .rounded))
                    
                    
                    .padding(.horizontal, 20)
                    .padding(.vertical, 7)
                
                
                
                Image(systemName: "chevron.down")
                    
                    .padding(.horizontal, 20)
                
            }
            .foregroundColor(.black)
            .background(Color("darkerMainColor"))
            
            .cornerRadius(20)
            .offset( y: 40)
            
            .shadow(radius: 1, y: 1)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}



        
    


struct FollowingButton: View {
    var body: some View {
        Text("Following")
            .font(.system(size: 15, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal, 10)
            .padding(.vertical, 7)
            .background(Color("blueColor"))
            .cornerRadius(20)
    }
}

struct NotFollowingButton: View {
    var body: some View {
        Text("Follow")
            
            .font(.system(size: 15, design: .rounded))
            .foregroundColor(Color("blueColor"))
            .padding(.horizontal, 20)
            .padding(.vertical, 7)
            .background(Color.white)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color("blueColor"), lineWidth: 2)
            )
    }
}
