//
//  SignInWithEmailView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 1/7/21.
//

import SwiftUI

struct SignInWithEmailView: View {
    
    @EnvironmentObject var userData: UserData
    @State var user: UserViewModel = UserViewModel()
    @Binding var showSheet: Bool
    @Binding var action: LoginView.Action?
    
    @State private var showAlert = false
    @State private var authError: EmailAuthError?
    
    
    var body: some View {
        
        VStack {
            TextField("Email Address", text: self.$user.email)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            SecureField("Password", text: $user.password)
            HStack {
                Spacer()
                Button(action: {
                    self.action = .resetPW
                    self.showSheet = true
                    print(action)
                }) {
                    Text("Forgot Password")
                }
            } // End HStack
            .padding(.bottom)
            
            VStack(spacing: 10) {
                
                // LOGIN
                // ----------------
                Button(action: {
                    // Sign in action
                    FBAuth.authenticate(withEmail: self.user.email, password: self.user.password) { (result) in
                        switch result {
                        case .failure(let error):
                            self.authError = error
                            self.showAlert = true
                        case .success( _):
                            print("Sign in successfully")
                        }
                    }
                }) {
                    Text("Login")
                        .padding(.vertical, 15)
                        .frame(width: 200)
                        .background(Color.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .opacity(user.isLogInComplete ? 1 : 0.75)
                }.disabled(!user.isLogInComplete)
                
                // SIGN UP
                // ----------------
                Button(action: {
                    self.action = .signUp
                    self.showSheet = true
                }) {
                    Text("Sign Up")
                        .padding(.vertical, 15)
                        .frame(width: 200)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
                
            } // End VStack
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Login Error"), message: Text(self.authError?.localizedDescription ?? "Unknown Error"), dismissButton: .default(Text("OK")) {
                    if self.authError == .incorrectPassword {
                        self.user.password = ""
                    } else {
                        self.user.email = ""
                        self.user.password = ""
                    }
                    
                })
            }
            
        } // End VStack
        .padding(.top, 100)
        .frame(width: 300)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        
    }
}

//struct SignInWithEmailView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInWithEmailView()
//    }
//}
