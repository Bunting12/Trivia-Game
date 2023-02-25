//
//  Extensions.swift
//  TriviaGame
//
//  Created by David Bunting on 24.02.23.
//

import Foundation
import SwiftUI

extension Text{
    func accentTitle() -> some View{
        self.font(.title)
            .fontWeight(.bold)
        // Add linear grad to foreground colour
            .foregroundColor(Color("purple"))
    }
}
