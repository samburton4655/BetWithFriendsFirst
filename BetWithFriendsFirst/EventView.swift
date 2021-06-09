//
//  EventView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/20/21.
//

import SwiftUI

struct EventView: View {
    
    @EnvironmentObject var userData: UserData
    
    @StateObject var viewModelSports = SportsViewModel()
    @StateObject var viewModelGames = GamesViewModel()
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
