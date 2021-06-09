//
//  HomePage.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/5/21.
//

import SwiftUI

struct HomePage: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.darkGray
        UITabBar.appearance().unselectedItemTintColor = UIColor.lightGray
        UITabBar.appearance().tintColor = UIColor.green
    }
    
    var body: some View {
        TabView {
            HomeView()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            BetSlipView()
            .tabItem {
                Image(systemName: "list.bullet.below.rectangle")
                Text("Bet Slip")
            }
            MakeTakeView()
            .tabItem {
                Image(systemName: "ticket")
                Text("Make/Take")
            }
            SocialView()
            .tabItem {
                Image(systemName: "heart")
                Text("Social")
            }
            AccountView()
            .tabItem {
                Image(systemName: "person")
                Text("Account")
            }
        }   // End of TabView
        .font(.headline)
        .imageScale(.medium)
        .font(Font.title.weight(.regular))
    }
    
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
