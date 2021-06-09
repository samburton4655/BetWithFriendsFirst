//
//  LogoBar.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/5/21.
//

import SwiftUI

struct LogoBar: View {
    var body: some View {
        HStack(spacing: 4) {
//            Image("Asset 8")
//                .resizable()
//                .frame(width: 35.0, height: 30.0)
//                .padding(.horizontal, 6)
            Image("Asset 17")
                .resizable()
                .frame(width: 135.0, height: 30.0)
        } // HStack
    }
}

struct LogoBar_Previews: PreviewProvider {
    static var previews: some View {
        LogoBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
