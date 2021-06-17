//
//  EventView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/20/21.
//

import SwiftUI

struct EventView: View {
    
    @EnvironmentObject var userData: UserData
    
    @State var game: Game
    
    var body: some View {
        VStack(spacing: 0) {
            
            Text(game.teams.home.team)
                .foregroundColor(.white)
                .font(.system(size: 24.0))
            Text("VS")
                .foregroundColor(Color("myLime"))
            Text(game.teams.away.team)
                .foregroundColor(.white)
                .font(.system(size: 24.0))
            
            MakeTakeButton()
                .padding(.top, 10)
                
            Spacer()
            
        } // VStack
        .frame(width: UIScreen.main.bounds.width)
        .background(Color("Background").edgesIgnoringSafeArea(.all))
        .padding()
    }
    
}
