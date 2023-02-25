//
//  ContentView.swift
//  TriviaGame
//
//  Created by David Bunting on 24.02.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            VStack(spacing: 40){
                    VStack(spacing: 20){
                        Text("Game Title")
                            .accentTitle()
                        Text("Are you ready?")
                            .font(.title3)
                            .foregroundColor(Color("purple"))
                    }
                NavigationLink(){
                    triviaView()
                }
            label: {
                primaryButton(text: "Let's Go!")
                    .font(.headline)
                    .fontWeight(.bold)
            }
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            .background(LinearGradient(colors: [Color(.white), Color(.lightGray).opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
