//
//  primaryButton.swift
//  TriviaGame
//
//  Created by David Bunting on 24.02.23.
//

import SwiftUI

struct primaryButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    var body: some View {
        Text(text)
            .foregroundColor(Color("purple"))
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 3, x: 5, y: 5)
            
    }
}

struct primaryButton_Previews: PreviewProvider {
    static var previews: some View {
        primaryButton(text: "Next")
    }
}
