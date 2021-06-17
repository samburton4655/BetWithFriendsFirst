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
    
    @StateObject var viewModelSports = SportsViewModel()
    @StateObject var viewModelGames = AllGamesViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 0) {
                // TITLE BAR
                NavigationBarView()
                    .padding(.top)
                    .navigationBarTitle(Text(" "), displayMode: .inline)
                    .navigationBarHidden(true)
                
                // SPORT BAR
                SportsBar()

                // GAMES TODAY
                GameCardView()
                
                Spacer()
                                
            } // VStack
            .background(Color("Background").edgesIgnoringSafeArea(.all))

        } // NavigationView

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


//        NavigationView {
//
//            // LOGOUT NAVIGATION BAR
//            Text("Logged in as \(userData.user.name)")
//                .navigationBarItems(trailing: Button("Log Out") {
//                    FBAuth.logout { (result) in
//                        print("Logged Out")
//                    }
//                })
//                .onAppear {
//                    guard let uid = Auth.auth().currentUser?.uid else {
//                        return
//                    }
//                    FBFirestore.retrieveFBUser(uid: uid) { (result) in
//                        switch result {
//                        case .failure(let error):
//                            print(error.localizedDescription)
//                        case .success(let user):
//                            self.userData.user = user
//                        }
//                    }
//                }
//
//        } // End NavigationView
