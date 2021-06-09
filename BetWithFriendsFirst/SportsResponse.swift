//
//  SportsResponse.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/18/21.
//

import Foundation

struct SportsResponse: Codable {
    let sports: [SportType]
}

struct SportType: Codable, Identifiable {
    
    let sportId: Int
    let sportName: String
    
    var id: Int {
        sportId
    }
    
    enum CodingKeys: String, CodingKey {
        case sportId = "sport_id"
        case sportName = "sport_name"
    }
}


//{1 item
//    "sports": [10 items
//        0:{2 items
//            "sport_id":1
//            "sport_name":"NCAA Football"
//        }
//    ]
//}
