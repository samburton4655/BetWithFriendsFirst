//
//  MakeTakeButton.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 6/16/21.
//

import SwiftUI

struct MakeTakeButton: View {
    
    @State var makeSelected = true
    @State var takeSelected = false
    
    var body: some View {
        HStack {
            
            Button(action: {
                makeSelected = true
                takeSelected = false
            }) {
                if makeSelected {
                    Text("Make")
                        .frame(width: 120, height: 35)
                        .border(Color("myLime"), width: 2)
                        .background(Color("myLime"))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.top, 5)
                }
                else {
                    Text("Make")
                        .frame(width: 120, height: 35)
                        .border(Color("myLime"), width: 2)
                        .background(Color("Background"))
                        .cornerRadius(5)
                        .foregroundColor(Color("myLime"))
                        .padding(.horizontal, 10)
                        .padding(.top, 5)
                }
            }
            
            Button(action: {
                makeSelected = false
                takeSelected = true
            }) {
                if takeSelected {
                    Text("Take")
                        .frame(width: 120, height: 35)
                        .border(Color("myLime"), width: 2)
                        .background(Color("myLime"))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.top, 5)
                }
                else {
                    Text("Take")
                        .frame(width: 120, height: 35)
                        .border(Color("myLime"), width: 2)
                        .background(Color("Background"))
                        .cornerRadius(5)
                        .foregroundColor(Color("myLime"))
                        .padding(.horizontal, 10)
                        .padding(.top, 5)
                }
            }
            
        } // HStack
    }
}

struct MakeTakeButton_Previews: PreviewProvider {
    static var previews: some View {
        MakeTakeButton()
    }
}
