//
//  Card.swift
//  BetWithFriendsFirst
//
//  Created by Samuel Burton on 5/19/21.
//

import SwiftUI
import UIKit

struct Card: View {
    
    @State var game: Game
    
    var body: some View {
        
        NavigationLink(destination: EventView(game: game)) {
            VStack {
                
                Text(game.details.league)
                    .frame(width: 360, height: 20, alignment: .center)
                    .background(RoundedCorners(color: Color("myGray"), tl: 10, tr: 10, bl: 0, br: 0))
                    //.background(Color("myGray"))
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text(game.teams.home.team)
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                            .bold()
                        Text(game.teams.away.team)
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                            .bold()
                    } // VStack
                    .padding(.top, 6)
                    .padding(.bottom, 6)
                    
                    Spacer()
                    
                    Group {
                                                
                        VStack(alignment: .trailing) {
                            Text("\(game.odds[0].spread.current.home, specifier: "%.1f")")
                                .font(.system(size: 16))
                            Text("\(game.odds[0].spread.current.away, specifier: "%.1f")")
                                .font(.system(size: 16))
                        } // VStack
                        //.padding(.top, 6)
                        //.padding(.bottom, 6)
                        .padding(.horizontal, 3)
                                                         
                        VStack(alignment: .trailing) {
                            Text("\(game.odds[0].spread.current.homeOdds)")
                                .font(.system(size: 16))
                            Text("\(game.odds[0].spread.current.awayOdds)")
                                .font(.system(size: 16))
                            Text(" ")
                        } // VStack
                        .padding(.top, 20)
                        //.padding(.bottom, 6)
                                                
                    } // Group
                    .padding(.horizontal, 4)
                    
    //               Text(parserTime(date: game.schedule.date))
    //                    .foregroundColor(.white)
    //                    .font(.system(size: 16))
    //                    .padding(.bottom, 6)
                    
                } // HStack
                    //.padding()
                    .frame(width: 360, height: 48, alignment: .center)
                    .background(Color.gray)
//                    .shadow(color: Color.gray, radius: 2)
//                    .cornerRadius(6)
                    .navigationBarTitle(Text(" "), displayMode: .inline)
                    .navigationBarHidden(true)
                
                Text(parserTime(date: game.schedule.date))
                    .frame(width: 360, height: 20, alignment: .center)
                    .background(RoundedCorners(color: Color("myGray"), tl: 0, tr: 0, bl: 12, br: 12))
                    .foregroundColor(Color("myLime"))
                    .font(.system(size: 16))
                            
            } // VStack
            .padding(.top, 4)
            .shadow(color: Color.gray, radius: 1)
        
        } // NavigationLink

        
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

struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0

    var body: some View {
        GeometryReader { geometry in
            Path { path in

                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)

                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .fill(self.color)
        }
    }
}
