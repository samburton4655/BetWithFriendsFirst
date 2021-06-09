//
//  LoginView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 1/6/21.
//

import SwiftUI

struct LoginView: View {

    enum Action {
        case signUp, resetPW
    }
    @State private var showSheet = false
    @State private var action: Action?
    @State private var temp = false
    
    var body: some View {
           
        VStack {
                    
            SignInWithEmailView(showSheet: $showSheet, action: $action)
            // SignInWithAppleView().frame(width: 200, height: 50)
            Spacer()
        }
            .background(Color("Background").edgesIgnoringSafeArea(.all))
            .sheet(isPresented: $showSheet) {
                if self.action == .signUp {
                    SignUpView()
                } else {
                    ForgotPasswordView()
                }
                
            }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
