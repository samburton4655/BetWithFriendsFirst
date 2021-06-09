//
//  UserData.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 1/6/21.
//

import Foundation
import FirebaseAuth

class UserData: ObservableObject {
    
    enum FBAuthState {
        case undefined, signedOut, signedIn
    }
    @Published var isUserAuthenticated: FBAuthState = .undefined
    @Published var user: FBUser = .init(uid: "", name: "", email: "")
    
    var authStateDidChangeListenerHandle: AuthStateDidChangeListenerHandle?
    
    
    func configureFirabaseStateDidChange() {
        
        authStateDidChangeListenerHandle = Auth.auth().addStateDidChangeListener({ (_, user) in
            guard let _ = user else {
                self.isUserAuthenticated = .signedOut
                return
            }
            self.isUserAuthenticated = .signedIn
//            FBFirestore.retrieveFBUser(uid: user.uid) { (result) in
//                switch result {
//                case .failure(let error):
//                    print(error.localizedDescription)
//                case .success(let error):
//                    self.user = user
//                }
//            }
        })
        
    }
    
}
