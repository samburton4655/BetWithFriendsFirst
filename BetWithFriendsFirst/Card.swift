//
//  Card.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/19/21.
//

import SwiftUI

struct Card: View {
    
    @State var teams: [TeamsNormalized]
    @State var time: String
    
    var body: some View {
        
        VStack {
            HStack {
                Text(teams[0].abbreviation)
                Text(" vs ")
                Text(teams[1].abbreviation)
            } // HStack
            Text(parserTime(date: time))
        } // VStack
            .padding()
            .frame(width: 350, height: 50, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 2)
                    .shadow(color: Color.gray, radius: 2)
            )

    } // View
}

func parserTime(date: String) -> String {
    
    let temp = date.components(separatedBy: "T")
    let temp2 = temp[1].components(separatedBy: "Z")
    let timeArray = temp2[0].components(separatedBy: ":")
    
    let hourArray = timeArray[0]
    let minuteArray = timeArray[1]
    
    var finalTime = ""
    var AMPM = ""
        
    // HOUR
    // 20+ Times
    if hourArray[0] == "2" {
        if hourArray[1] == "0" {
            finalTime += "4"
            AMPM += "PM"
        }
        if hourArray[1] == "1" {
            finalTime += "5"
            AMPM += "PM"
        }
        if hourArray[1] == "2" {
            finalTime += "6"
            AMPM += "PM"
        }
        if hourArray[1] == "3" {
            finalTime += "7"
            AMPM += "PM"
        }

    }
    
    // HOUR
    // 10+ Times
    if hourArray[0] == "1" {
        // AM
        if hourArray[1] == "0" {
            finalTime += "6"
            AMPM += "AM"
        }
        if hourArray[1] == "1" {
            finalTime += "7"
            AMPM += "AM"
        }
        if hourArray[1] == "2" {
            finalTime += "8"
            AMPM += "AM"
        }
        if hourArray[1] == "3" {
            finalTime += "9"
            AMPM += "AM"
        }
        if hourArray[1] == "4" {
            finalTime += "10"
            AMPM += "AM"
        }
        if hourArray[1] == "5" {
            finalTime += "11"
            AMPM += "AM"
        }
        // PM
        if hourArray[1] == "6" {
            finalTime += "12"
            AMPM += "PM"
        }
        if hourArray[1] == "7" {
            finalTime += "1"
            AMPM += "PM"
        }
        if hourArray[1] == "8" {
            finalTime += "2"
            AMPM += "PM"
        }
        if hourArray[1] == "9" {
            finalTime += "3"
            AMPM += "PM"
        }
    }
    
    // HOUR
    // 0+ Times
    if hourArray[0] == "0" {
        // PM
        if hourArray[1] == "0" {
            finalTime += "8"
            AMPM += "PM"
        }
        if hourArray[1] == "1" {
            finalTime += "9"
            AMPM += "PM"
        }
        if hourArray[1] == "2" {
            finalTime += "10"
            AMPM += "PM"
        }
        if hourArray[1] == "3" {
            finalTime += "11"
            AMPM += "PM"
        }
        if hourArray[1] == "4" {
            finalTime += "12"
            AMPM += "PM"
        }
        
        // AM
        if hourArray[1] == "5" {
            finalTime += "1"
            AMPM += "AM"
        }
        if hourArray[1] == "6" {
            finalTime += "2"
            AMPM += "AM"
        }
        if hourArray[1] == "7" {
            finalTime += "3"
            AMPM += "AM"
        }
        if hourArray[1] == "8" {
            finalTime += "4"
            AMPM += "AM"
        }
        if hourArray[1] == "9" {
            finalTime += "5"
            AMPM += "AM"
        }
    }
    
    finalTime += ":"
    finalTime += String(minuteArray[0])
    finalTime += String(minuteArray[1])
    finalTime += " "
    finalTime += AMPM
    
    return finalTime
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

