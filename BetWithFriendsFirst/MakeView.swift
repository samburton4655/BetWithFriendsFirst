//
//  MakeView.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 6/8/21.
//

import SwiftUI

struct MakeView: View {
    
    @EnvironmentObject var userData: UserData
    
    @State private var teamName1 = ""
    @State var selectedLeague = ""
    var leagues = ["MLB", "NBA"]
    
    var body: some View {
        
        VStack(spacing: 0) {
        
            Form {
                Section {
                    Picker("League", selection: $selectedLeague) {
                        ForEach(leagues, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section {
                    Text("temp")
                }
            }
            .background(Color("Background"))
            
            Spacer()
            
        } // VStack
        .background(Color("Background"))
    }
}

struct MakeView_Previews: PreviewProvider {
    static var previews: some View {
        MakeView()
    }
}
