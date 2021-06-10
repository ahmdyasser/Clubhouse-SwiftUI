//
//  Controller.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 29/03/2021.
//

import SwiftUI

struct People: Identifiable {
    var id = UUID()
    var name: String
}
struct RoomView: Identifiable {
    var id = UUID()
    
    var members: [People]
    let roomName: String
    let roomTitle: String
    var membersCount: Int
    var speakersCount: Int
}


    let people: [People] = [
        People(name: "Ahmad"),
        People(name: "Yasser")
    ]
   
    

