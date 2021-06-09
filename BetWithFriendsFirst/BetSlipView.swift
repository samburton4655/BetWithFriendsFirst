//
//  BetSlipView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 2/3/21.
//

import SwiftUI
import Firebase

struct BetSlipView: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.top)
                    .navigationBarTitle(Text("Search Movie Stars"), displayMode: .inline)
                    .navigationBarHidden(true)
                
                Spacer()
                
                Text("You have no active bets")
                    .foregroundColor(.white)
                
                Spacer()
                
            } // VStack
            .background(Color("Background").edgesIgnoringSafeArea(.all))
        } // NavigationView
        
    }
}

struct BetSlipView_Previews: PreviewProvider {
    static var previews: some View {
        BetSlipView()
    }
}
