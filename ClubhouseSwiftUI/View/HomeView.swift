//
//  ContentView.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 25/03/2021.
//

import SwiftUI
import UIKit

struct HomeView: View {
    @State private var showProfile = false
    @State private var startRoomPressed = false
    @State private var roomMode: String = "Public"
    @State private var showOnlinePeople = false
    
    var plusGlyph = Image(systemName: "plus")
    var room: RoomView
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack {
                
                NavigationView {
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color("mainColor"))
                            .ignoresSafeArea()
                        VStack {
                            HStack(spacing: 40) {
                                Button(action: {
                                    
                                }, label: {
                                    NavigationLink(destination: SearchView()) {
                                        Image(systemName: "magnifyingglass")
                                            .resizable()
                                            .foregroundColor(.black)
                                            .scaledToFit()
                                            .frame(width: 25)
                                    }
                                    
                                })
                                
                                Spacer()
                                Image(systemName: "envelope.open")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                Image(systemName: "calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                              
                                Button(action: {
                                    
                                }, label: {
                                    NavigationLink(destination: NotificationView()) {
                                        Image(systemName: "bell")
                                            
                                            .resizable()
                                            .foregroundColor(.black)
                                            .scaledToFit()
                                            .frame(width: 25)
                                    }
                                    
                                })
                                Button(action: {
                                    
                                }, label: {
                                    NavigationLink(destination: ProfileView().toolbar(content: {
                                        
                                        HStack(spacing: 40) {
                                            
                                            
                                            Spacer()
                                            Button(action: {shareAction()}, label: {   Image(systemName: "square.and.arrow.up")
                                                .resizable()
                                                .foregroundColor(.black)
                                                .scaledToFit()
                                                .frame(height: 25)
                                            })
                                            
                                            NavigationLink(
                                                destination: SettingsView(),
                                                label: {
                                                    Image(systemName: "gear")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 25)
                                                }).foregroundColor(.black)
                                            
                                            
                                            
                                            
                                        }
                                        
                                        
                                        
                                    })) {
                                        Image(systemName: "person.circle.fill")
                                            .resizable()
                                            .foregroundColor(.black)
                                            .scaledToFit()
                                            .frame(width: 25)
                                        
                                    }
                                    
                                })
                                
                                
                            }
                            .padding()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack {
                                    ScrollView {
                                        LazyVStack {
                                            roomView()
                                                .frame(width: geometry.size.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            roomView()
                                            roomView()
                                            roomView()
                                        }
                                    }
                                    OnlinePeopleView()
                                }
                            }
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                        if showOnlinePeople {
                            SettingsView()
                                .transition(.slide)
                        }
                        
                        
                        
                    }
                    .navigationBarHidden(true)
                }
                
                
                
                //                Rectangle()
                //                    .ignoresSafeArea()
                VStack() {
                    Spacer()
                    Image("Rectangle")
                        
                        .resizable()
                        
                        .frame(width: geometry.size.width, height: 100)
                    
                }.ignoresSafeArea()
                
                
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            withAnimation {
                                self.startRoomPressed.toggle()
                            }
                        }, label: {
                            Text("\(plusGlyph) Start a room")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 12, leading: 30, bottom: 12, trailing: 30))
                                .background(Color("greenColor"))
                                .cornerRadius(100)
                            
                            
                            
                        })
                        
                        Button(action: {
                            withAnimation {
                                showOnlinePeople.toggle()
                                
                            }
                            
                        }, label: {
                            Image(systemName: "circle.grid.3x3.fill")
                                
                                .resizable()
                                .foregroundColor(.black)
                                .scaledToFit()
                                .frame(width: 30)
                            
                        })
                        Spacer()
                        
                    }
                    
                    
                    
                    
                    
                }
                if startRoomPressed {
                    //Dim the background
                    Rectangle()
                        .opacity(0.1)
                        
                        .ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                        
                        StartRoomView()
                            //                            .offset(y: 150)
                            .transition(.move(edge: .bottom))
                            .gesture(
                                DragGesture(minimumDistance: 50)
                                    .onEnded { _ in
                                        withAnimation {
                                            startRoomPressed.toggle()
                                        }
                                        
                                    }
                                
                            )
                        
                        
                    }.ignoresSafeArea()
                    
                    
                }
                
                
            }
            
        }
        
    }
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct roomView: View {
    
    var body: some View {
        let personGlyph = Image(systemName: "person.fill")
        let chatGlyph = Image(systemName: "ellipsis.bubble.fill")
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("NEW USER ONBORDING")
                        .font(.system(size: 13, weight: .semibold, design: .rounded))
                    Image(systemName: "house.fill")
                        .resizable()
                        .foregroundColor(Color("greenColor"))
                        .scaledToFit()
                        .frame(width: 20)
                }
                Text("Welcome to Clubhouse 👋")
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                HStack {
                    VStack {
                        Circle()
                            .frame(width: 50, height: 50)
                        //spacer()
                    }
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Paul Davison 💭")
                            
                            Text("Anu 💭")
                            Text("Rohan Seth 💭")
                            
                        }
                        .font(.system(size: 20, design: .rounded))
                        Text("1.6k \(personGlyph)  /  5 \(chatGlyph)")
                            .foregroundColor(.secondary)
                        
                    }
                    
                }
            }
            .padding()
            Spacer()
        }
        .background(Color.white)
        
        .cornerRadius(18)
        .padding()
        .shadow(radius: 1, y: 1)
    }
}
struct TVShow: Identifiable {
    var id: String { name }
    let name: String
}

