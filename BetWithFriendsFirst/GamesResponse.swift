//
//  GamesResponse.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/18/21.
//

import Foundation

struct GamesResponse: Codable {
    let events: [Event]
}



struct Event: Codable, Identifiable {
    
    let eventId: String
    let sportId: Int
    let eventDate: String
    let teams: [Teams]
    let teamsNormalized: [TeamsNormalized]
    
    var id: String {
        eventId
    }
    
    enum CodingKeys: String, CodingKey {
        case eventDate = "event_date"
        case eventId = "event_id"
        case sportId = "sport_id"
        case teamsNormalized = "teams_normalized"
        case teams
    }

}

struct Teams: Codable, Identifiable {
    
    let isAway: Bool
    let isHome: Bool
    let name: String
    let teamId: Int
    let teamNormalizedId: Int

    
    var id: Int {
        teamId
    }
    
    enum CodingKeys: String, CodingKey {
        case isAway = "is_away"
        case isHome = "is_home"
        case teamId = "team_id"
        case teamNormalizedId = "team_normalized_id"
        case name
    }
    
}

struct TeamsNormalized: Codable, Identifiable {
    
    let abbreviation: String
    let isAway: Bool
    let isHome: Bool
    let mascot: String
    let name: String
    let ranking: Int
    let record: String
    let teamId: Int

    
    var id: Int {
        teamId
    }
    
    enum CodingKeys: String, CodingKey {
        case isAway = "is_away"
        case isHome = "is_home"
        case teamId = "team_id"
        case abbreviation
        case mascot
        case name
        case ranking
        case record
    }
    
}
