//
//  ContentView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 11/30/20.
//

import SwiftUI
import Firebase

struct ContentView: View {
        
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        Group {
            if userData.isUserAuthenticated == .undefined {
                Text("Loading...")
            } else if userData.isUserAuthenticated == .signedOut {
                LoginView()
            } else {
                HomePage()
            }
        }
        .onAppear {
            self.userData.configureFirabaseStateDidChange()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

