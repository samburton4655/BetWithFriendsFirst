//
//  ForgotPasswordView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 1/7/21.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var user: UserViewModel = UserViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showAlert = false
    @State private var errorString: String?
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter email address", text: $user.email).autocapitalization(.none).keyboardType(.emailAddress)
                Button(action: {
                    // Reset Password action
                    FBAuth.resetPassword(email: self.user.email) { (result) in
                        switch result {
                        case .failure(let error):
                            self.errorString = error.localizedDescription
                        case .success( _):
                            break
                        }
                        self.showAlert = true
                    }
                }) {
                    Text("Reset")
                        .frame(width: 200)
                        .padding(.vertical, 15)
                        .background(Color.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .opacity(user.isEmailValid(_email: user.email) ? 1 : 0.75)
                }
                .disabled(!user.isEmailValid(_email: user.email))
                Spacer()
            }.padding(.top)
                .frame(width: 300)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            .navigationBarTitle("Password Reset", displayMode: .inline)
                .navigationBarItems(trailing: Button("Dismiss") {
                    self.presentationMode.wrappedValue.dismiss()
                })
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Password Reset"), message: Text(self.errorString ?? "Reset email sent."), dismissButton: .default(Text("OK")) {
                      self.presentationMode.wrappedValue.dismiss()
                      })
            }
        }
    }
}


struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
