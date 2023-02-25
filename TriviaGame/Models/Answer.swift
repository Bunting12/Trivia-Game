//
//  Answer.swift
//  TriviaGame
//
//  Created by David Bunting on 24.02.23.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}

