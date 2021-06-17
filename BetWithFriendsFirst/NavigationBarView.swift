//
//  NavigationBarView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/5/21.
//

import SwiftUI
import Firebase

struct NavigationBarView: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        HStack {
            
            Spacer()
            
            LogoBar()
                .offset(x: 45)
            
            Spacer()
            
            Button(action: {
                FBAuth.logout { (result) in
                    print("Logged Out")
                }
            }) {
                Text("Log Out")
                    .frame(width: 75, height: 22)
                    .background(Color("myLime"))
                    .cornerRadius(5)
                    .foregroundColor(Color("Background"))
                    .padding(.horizontal, 11)
                    .padding(.top, 5)
            }
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
            
        } //HStack
        .background(Color("Background"))
        
    }
    
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
