//
//  SportsBar.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/18/21.
//

import SwiftUI

struct SportsBar: View {
    
    var sports = ["CFB", "NFL", "MLB", "NBA", "NCAAB", "NHL", "UFC", "MLS", "CFL"]
    
    var body: some View {
        
         
        ScrollView(.horizontal, showsIndicators: false) {
                
            HStack(spacing: 30) {
                ForEach(sports, id: \.self) { data in
                    NavigationLink(destination: EventView()) {
                        Text(data)
                            .foregroundColor(Color("myLime"))
                    }
                }
            } // HStack
                
        } // ScrollView
        .padding()

    }
}

struct SportsBar_Previews: PreviewProvider {
    static var previews: some View {
        SportsBar()
            .previewLayout(.sizeThatFits)
    }
}
