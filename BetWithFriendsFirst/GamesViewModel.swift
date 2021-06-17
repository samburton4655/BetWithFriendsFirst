//
//  GamesViewModel.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/18/21.
//

import Foundation
import SwiftUI

final class GamesViewModel: ObservableObject {
    
    @Published private(set) var event = [Event]()
    
//    func loadData() {
//        ApiClient.shared.gamesTodayData { data in
//            print(data)
//            DispatchQueue.main.async {
//                self.event = data?.events ?? []
//            }
//        }
//    }
}
