//
//  progressBar.swift
//  TriviaGame
//
//  Created by David Bunting on 24.02.23.
//

import SwiftUI

struct progressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 5)
                .foregroundColor(Color("purple"))
                .opacity(0.4)
                .cornerRadius(10)
            Rectangle()
                .frame(width: progress, height: 5)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
            
        }
    }
}

struct progressBar_Previews: PreviewProvider {
    static var previews: some View {
        progressBar(progress: 10)
    }
}
