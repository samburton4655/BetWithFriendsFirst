//
//  MakeTakeView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 6/8/21.
//

import SwiftUI

struct MakeTakeView: View {
    
    @State var makeSelected = true
    @State var takeSelected = false
    @State var searchTerm = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.top)
                    .padding(.bottom, 20)
                    .navigationBarTitle(Text("Search Movie Stars"), displayMode: .inline)
                    .navigationBarHidden(true)
                
                HStack(alignment: .center) {
                    
                    // MAKE
                    Button(action: {
                        self.makeSelected = true
                        self.takeSelected = false
                    }) {
                        if makeSelected {
                            Text("Make")
                                .frame(width: 100, height: 25)
                                .background(Color("myLime"))
                                .cornerRadius(5)
                                .foregroundColor(Color("Background"))
                                .padding(.horizontal, 10)
                                .padding(.top, 5)
                        }
                        else {
                            Text("Make")
                                .frame(width: 100, height: 25)
                                .border(Color("myLime"), width: 2)
                                .background(Color("Background"))
                                .cornerRadius(5)
                                .foregroundColor(Color("myLime"))
                                .padding(.horizontal, 10)
                                .padding(.top, 5)
                        }
                    }
                    
                    // TAKE
                    Button(action: {
                        self.makeSelected = false
                        self.takeSelected = true
                    }) {
                        if takeSelected {
                            Text("Take")
                                .frame(width: 100, height: 25)
                                .background(Color("myLime"))
                                .cornerRadius(5)
                                .foregroundColor(Color("Background"))
                                .padding(.horizontal, 10)
                                .padding(.top, 5)
                        }
                        else {
                            Text("Take")
                                .frame(width: 100, height: 25)
                                .border(Color("myLime"), width: 2)
                                .background(Color("Background"))
                                .cornerRadius(5)
                                .foregroundColor(Color("myLime"))
                                .padding(.horizontal, 10)
                                .padding(.top, 5)
                        }
                    }
                    
                } // HStack
                .padding(.bottom, 20)
                
                
                // MAKE or TAKE DECISION
                if makeSelected {
                    MakeView()
                } else {
                    TakeView()
                }
                
                Spacer()
                
            } // VStack
            .background(Color("Background").edgesIgnoringSafeArea(.all))
        } // NavigationView
    }
}

struct MakeTakeView_Previews: PreviewProvider {
    static var previews: some View {
        MakeTakeView()
    }
}
