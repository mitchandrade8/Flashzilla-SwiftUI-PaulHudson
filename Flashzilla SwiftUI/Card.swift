//
//  Card.swift
//  Flashzilla SwiftUI
//
//  Created by Mitch Andrade on 2/28/22.
//

import Foundation

struct Card: Codable {
    let prompt: String
    let answer: String
    
    static let example = Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}
