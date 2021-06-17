//
//  GameCardView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/19/21.
//

import SwiftUI

struct GameCardView: View {
    
    @StateObject var viewModelGames = AllGamesViewModel()
    
    var body: some View {
        
        Text("Games Today")
            .font(.largeTitle)
            .foregroundColor(Color.white)
            .padding(.bottom, 10)
        
        ScrollView {
            VStack {
                ForEach(viewModelGames.game) {
                    Card(game: $0)
                        //.padding(.bottom)
                }
            } // VStack
            .onAppear {
                viewModelGames.loadData()
            }
        } // ScrollView
        
    }
    
}

//struct GameCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameCardView()
//    }
//}
