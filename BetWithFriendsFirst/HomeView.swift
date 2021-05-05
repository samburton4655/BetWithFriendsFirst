//
//  HomeView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 1/6/21.
//

import SwiftUI
import Firebase

struct HomeView: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        
//        TabView {
//            HomeView()
//            .tabItem {
//                Image(systemName: "house")
//                Text("Home")
//            }
//            BetSlipView()
//            .tabItem {
//                Image(systemName: "list.bullet.below.rectangle")
//                Text("Bet Slip")
//            }
//            AccountView()
//            .tabItem {
//                Image(systemName: "person")
//                Text("Account")
//            }
//
//        }   // End of TabView
//        .font(.headline)
//        .imageScale(.medium)
//        .font(Font.title.weight(.regular))
        
        
        NavigationView {
            
            Text("Logged in as \(userData.user.name)")
                .navigationBarItems(trailing: Button("Log Out") {
                    FBAuth.logout { (result) in
                        print("Logged Out")
                    }
                })
                .onAppear {
                    guard let uid = Auth.auth().currentUser?.uid else {
                        return
                    }
                    FBFirestore.retrieveFBUser(uid: uid) { (result) in
                        switch result {
                        case .failure(let error):
                            print(error.localizedDescription)
                        case .success(let user):
                            self.userData.user = user
                        }
                    }
                }
            
        } // End NavigationView
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


// AUTH
//.onAppear {
//    guard let uid = Auth.auth().currentUser?.uid else {
//        return
//    }
//    FBFirestore.retrieveFBUser(uid: uid) { (result) in
//        switch result {
//        case .failure(let error):
//            print(error.localizedDescription)
//
//            // Display alert to user here!
//
//        case .success(let user):
//            self.userData.user = user
//        }
//    }
//}
