//
//  NotificationView.swift
//  ClubhouseSwiftUI
//
//  Created by Ahmad Yasser on 10/06/2021.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView {
            HStack {
                Circle()
                    .scaledToFit()
                    .frame(width: 50)
                Text("Mohamed Hassan")
                Text("22h ago").font(.system(size: 12, weight: .light, design: .rounded))
                    .foregroundColor(.gray)
                
             
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
