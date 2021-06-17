//
//  AllGamesResponse.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 6/15/21.
//

import Foundation

struct AllGamesResponse: Codable {
    let results: [Game]
}

struct Game: Codable, Identifiable {
    
    let schedule: Schedule
    let summary: String
    let details: Detail
//    let status: String
    let teams: TwoTeams
    let gameId: Int
    let odds: [Odds]
    //let scoreboard: Scoreboard
    
    var id: Int {
        gameId
    }
    
    enum CodingKeys: String, CodingKey {
        case schedule
        case summary
        case details
        case gameId
        //case status
        case teams
        case odds
        //case scoreboard
    }
}

struct Schedule: Codable, Identifiable {

    var id: UUID {
        UUID()
    }
    let date: String
    
    enum CodingKeys: String, CodingKey {
        case date
    }
}

struct Detail: Codable, Identifiable {
    
    var id: UUID {
        UUID()
    }
    let league: String
        
    enum CodingKeys: String, CodingKey {
        case league
    }
}

struct TwoTeams: Codable, Identifiable {
    
    var id: UUID {
        UUID()
    }
    let away: Team
    let home: Team
    
    enum CodingKeys: String, CodingKey {
        case away
        case home
    }
}

struct Team: Codable, Identifiable {
    
    var id: UUID {
        UUID()
    }
    let team: String
    let mascot: String
    let abbreviation: String
    let conference: String
    let division: String
    
    enum CodingKeys: String, CodingKey {
        case team
        case mascot
        case abbreviation
        case conference
        case division
    }
}

struct Odds: Codable, Identifiable {
    
    var id: UUID {
        UUID()
    }
    let spread: Spread
    let openDate: String
    
    enum CodingKeys: String, CodingKey {
        case spread
        case openDate
    }
}

struct Spread: Codable, Identifiable {

    var id: UUID {
        UUID()
    }
    let current: CurrentSpread

    enum CodingKeys: String, CodingKey {
        case current
    }
}

struct CurrentSpread: Codable, Identifiable {

    var id: UUID {
        UUID()
    }
    let away: Double
    let home: Double
    let awayOdds: Int
    let homeOdds: Int

    enum CodingKeys: String, CodingKey {
        case away
        case home
        case awayOdds
        case homeOdds
    }
}


struct Scoreboard: Codable, Identifiable {

    var id: UUID {
        UUID()
    }
    let score: Score

    enum CodingKeys: String, CodingKey {
        case score
    }
}

struct Score: Codable, Identifiable {

    var id: UUID {
        UUID()
    }
    let away: Int
    let home: Int

    enum CodingKeys: String, CodingKey {
        case away
        case home
    }
}
