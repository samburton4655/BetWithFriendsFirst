//
//  AllGamesViewModel.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 6/15/21.
//

import Foundation
import SwiftUI

final class AllGamesViewModel: ObservableObject {
    
    @Published private(set) var game = [Game]()
    
    func loadData() {
        ApiClient.shared.gamesData { data in
            print(data)
            DispatchQueue.main.async {
                self.game = data?.results ?? []
            }
        }
    }
}


//func loadData() {
//    ApiClient.shared.gamesData { data in
//        print(data)
//        DispatchQueue.main.async {
//            self.game = data?.games ?? []
//        }
//    }
//}
