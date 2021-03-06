//
//  AccountView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 2/3/21.
//

import SwiftUI
import Firebase

struct AccountView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.top)
                    .padding(.bottom, 20)
                    .navigationBarTitle(Text("Search Movie Stars"), displayMode: .inline)
                    .navigationBarHidden(true)
                
                VStack(alignment: .leading) {
                    Text("\(userData.user.name)")
                        .foregroundColor(.white)
                        .padding()
                    Divider()
                } // HStack
                .font(.title)
                
                Spacer()
                
                
            } // VStack
            .background(Color("Background").edgesIgnoringSafeArea(.all))
        } // NavigationView
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
