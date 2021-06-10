//
//  OnlinePeopleView.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 10/06/2021.
//

import SwiftUI

struct OnlinePeopleView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text("AVAILABLE TO CHAT")
                       
                        .font(.system(size: 16, design: .rounded))
                    Rectangle()
                        
                        .frame(width: 150, height: 0.5)
                } .foregroundColor(.gray)
                HStack {
                    Circle()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Mohamed Hassan")
                 
                }
                
            }
        }
    }
}

struct OnlinePeopleView_Previews: PreviewProvider {
    static var previews: some View {
        OnlinePeopleView()
    }
}
