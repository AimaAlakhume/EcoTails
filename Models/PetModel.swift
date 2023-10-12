//
//  PetModel.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import Foundation

struct Pet: Codable {
    var name: String
    var lastMeal: Date
    var lastGift: Date
    var lastPlay: Date
    var unhappySince: Date
    var oneDay = 86400 //1 day in seconds
    var halfDay = 43200 //12 hours in seconds
    
    var happinessLevel: String {
        hunger == "Hungry" || boredom == "Bored" ? "Unhappy" : "Happy"
    }
    
    var hunger: String {
        let timeSince = calcTimeSince(date: lastMeal)
        var string = ""
        
        switch timeSince {
        case 0..<halfDay: string = "Well fed"
        case halfDay...: string = "Hungry"
        default: string = ""
        }
        
        return string
    }
    
    var boredom: String {
        let timeSinceGift = calcTimeSince(date: lastGift)
        let timeSincePlay = calcTimeSince(date: lastPlay)
        var string = ""
        
        switch timeSincePlay {
        case 0..<oneDay: string = "Entertained"
        case oneDay...: string = "Bored"
        default: string = ""
        }
        
        switch timeSinceGift {
        case 0..<(3*oneDay): string = "Entertained"
        case (3*oneDay)...: string = "Bored"
        default: string = ""
        }
        
        return string
    }
    /*
    func isLeaving() -> Void{
        
        let timeSince = calcTimeSince(date: unhappySince)
        switch timeSince {
        case (3*oneDay)...: ViewModel = nil
        }
    }*/
}
