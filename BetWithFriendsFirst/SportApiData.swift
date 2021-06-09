//
//  SportApiData.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/10/21.
//

import SwiftUI
import Foundation

public func obtainSportsDataFromApi() {

    let headers = [
        "x-rapidapi-key": "bbcbc6e73bmsh12ce8cb8cf12a99p152f1fjsnac426a6b46b3",
        "x-rapidapi-host": "therundown-therundown-v1.p.rapidapi.com"
    ]

    let request = NSMutableURLRequest(url: NSURL(string: "https://therundown-therundown-v1.p.rapidapi.com/sports")! as URL,
                                            cachePolicy: .useProtocolCachePolicy,
                                        timeoutInterval: 10.0)
    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers
    print("working")
    let session = URLSession.shared
    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
        if (error != nil) {
            print(error)
        } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
        }
    })

    dataTask.resume()
    
}
