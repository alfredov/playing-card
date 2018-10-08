//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Alfredo Villagomez on 10/7/18.
//  Copyright © 2018 Alfredo Villagomez. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    
    var description: String {
        return "\(rank)\(suit)"
    }
    
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomStringConvertible {
        var description: String {
            return rawValue
        }
        
        case spades = "♠️"
        case hearts = "❤️"
        case clubs = "♣️"
        case diamonds = "🔷"
        
        static var all = [Suit.spades, .hearts, .diamonds, .clubs]
    }
    
    enum Rank: CustomStringConvertible {
        var description: String {
            switch self {
            case .ace: return "A"
            case .numeric(let pips): return String(pips)
            case .face(let kind): return kind
            }
        }
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        
        static var all: [Rank] {
            var allRanks = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
    }
}
