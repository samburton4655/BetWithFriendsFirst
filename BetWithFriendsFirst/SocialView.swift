//
//  SocialView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 6/8/21.
//

import SwiftUI

struct SocialView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.top)
                    .navigationBarTitle(Text("Search Movie Stars"), displayMode: .inline)
                    .navigationBarHidden(true)
                
                Spacer()
                
                Text("Social")
                    .foregroundColor(.white)
                
                Spacer()
                
            } // VStack
            .background(Color("Background").edgesIgnoringSafeArea(.all))
        } // NavigationView
    }
}

struct SocialView_Previews: PreviewProvider {
    static var previews: some View {
        SocialView()
    }
}
