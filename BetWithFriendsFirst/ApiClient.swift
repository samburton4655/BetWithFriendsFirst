//
//  ApiClient.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/18/21.
//

import Foundation

final class ApiClient {
    let key = "bbcbc6e73bmsh12ce8cb8cf12a99p152f1fjsnac426a6b46b3"
    
    static let shared = ApiClient()
        
    private let decoder = JSONDecoder()
    
    func sportsData(completion: @escaping (SportsResponse?) -> Void) {
        let headers = [
            "x-rapidapi-key": key,
            "x-rapidapi-host": "therundown-therundown-v1.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://therundown-therundown-v1.p.rapidapi.com/sports")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
                // TODO status code validation
                
                if let data = data {
                    if let result = try? self.decoder.decode(SportsResponse.self, from: data) {
                        completion(result)
                    } else {
                        // Demo
                        completion(.init(sports: [.init(sportId: 1, sportName: "Baseball"), .init(sportId: 2, sportName: "Soccer")]))
                    }
                }
            }
        })

        dataTask.resume()
    }
    
    //---------------
    
    // NBA Happening Today
    func gamesTodayData(completion: @escaping (GamesResponse?) -> Void) {
        let headers = [
            "x-rapidapi-key": key,
            "x-rapidapi-host": "therundown-therundown-v1.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://therundown-therundown-v1.p.rapidapi.com/sports/3/events/2021-06-14?offset=240")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
                // TODO status code validation
                
                if let data = data {
                    if let result = try? self.decoder.decode(GamesResponse.self, from: data) {
                        completion(result)
                    }
                }
            }
        })

        dataTask.resume()
    }
    
    // New API
    func gamesData(completion: @escaping (AllGamesResponse?) -> Void) {
        let headers = [
            "x-rapidapi-key": key,
            "x-rapidapi-host": "sportspage-feeds.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://sportspage-feeds.p.rapidapi.com/games")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
                // TODO status code validation
                
                if let data = data {
                    if let result = try? self.decoder.decode(AllGamesResponse.self, from: data) {
                        completion(result)
                    }
                }
            }
        })

        dataTask.resume()
    }
    
}
