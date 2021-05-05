//
//  BetWithFriendsFirstApp.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 11/30/20.
//

import SwiftUI
import UIKit
import Firebase

@main
struct BetWithFriendsFirstApp: App {
        
    init() {
        FirebaseApp.configure()
    }
    
    var userData = UserData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(userData)
        }
    }
    
}

