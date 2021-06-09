//
//  GameCardView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/19/21.
//

import SwiftUI

struct GameCardView: View {
    
    @StateObject var viewModelGames = GamesViewModel()
    
    var body: some View {
        
        VStack {
            Text("Games Today")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            
            ForEach(viewModelGames.event) {
                Card(teams: $0.teamsNormalized, time: $0.eventDate)
                    .padding(.bottom)
            }
        } // VStack
//        .onAppear {
//            viewModelGames.loadData()
//        }
        
    }
    
}

//struct GameCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameCardView()
//    }
//}
