//
//  StartRoomView.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 29/03/2021.
//

import SwiftUI

struct StartRoomView: View {
    private var plusGlyph = Image(systemName: "plus")
    @State var openMoodPressed = false
    @State var socialMoodPressed = false
    @State var closedMoodPressed = false
    
    var body: some View {
    
     
            
                VStack {
                    
                    RoundedRectangle(cornerRadius: 100)
                        .foregroundColor(.secondary)
                        .frame(width: 45, height: 7)
                        .padding(.vertical)
                        
                    HStack {
                        Spacer()
                        Text("+ Add a Topic")
                            .foregroundColor(Color("greenColor"))
                            .font(.system(size: 20,weight: .semibold, design: .rounded))
                    }.padding(.horizontal)
                        
                   
                       
                        HStack(spacing: 30) {
                            ZStack {
                                if openMoodPressed {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .opacity(0.3)
                                        .scaledToFill()
                                        .frame(height: 130)
                                }
                               
                                    Button(action: {
                                        openMoodPressed.toggle()
                                        
                                    }, label: {
                                        VStack {
                                            Circle()
                                                    .scaledToFit()
                                                    .frame(width:90)
                                            
                                            Text("Open")
                                        }
                                        .foregroundColor(.black)
                                    })
                              
                            }
                            ZStack {
                                if socialMoodPressed {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .opacity(0.3)
                                        .scaledToFill()
                                        .frame(height: 130)
                                }
                               
                                    Button(action: {
                                        socialMoodPressed.toggle()
                                    }, label: {
                                        VStack {
                                            Circle()
                                                    .scaledToFit()
                                                    .frame(width:90)
                                            
                                            Text("Open")
                                        }
                                        .foregroundColor(.black)
                                    })
                              
                            }
                            ZStack {
                                if closedMoodPressed {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .opacity(0.3)
                                        .scaledToFill()
                                        .frame(height: 130)
                                }
                               
                                    Button(action: {
                                        closedMoodPressed.toggle()
                                    }, label: {
                                        VStack {
                                            Circle()
                                                    .scaledToFit()
                                                    .frame(width:90)
                                            
                                            Text("Open")
                                        }
                                        .foregroundColor(.black)
                                    })
                              
                            }
                           
                        }
                        .padding(.horizontal, 30)
                    
                   
                    HStack(spacing:-3) {
                        Text("Start a room ")
                            .font(.system(size: 20, design: .rounded))
                        Text(" open to everyone")
                            .font(.system(size: 20,weight: .semibold, design: .rounded))
                    }
                    .padding(.vertical)
                    Button(action: {
                        
                    }, label: {
                        Text("🎉 Let's go")
                            .font(.system(size: 30, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 12, leading: 40, bottom: 12, trailing: 40))
                            .background(Color("greenColor"))
                            .cornerRadius(100)
                        
                        
                        
                    })
                    .padding(.bottom, 90)
                 
                }
             
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.white)
            )
                .animation(.easeInOut)
        
}

struct StartRoomView_Previews: PreviewProvider {
    static var previews: some View {
        StartRoomView()
            .previewLayout(.sizeThatFits)
    }
}
}
