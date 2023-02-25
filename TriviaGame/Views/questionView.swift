//
//  questionView.swift
//  TriviaGame
//
//  Created by David Bunting on 24.02.23.
//

import SwiftUI

struct questionView: View {
    var body: some View {
        VStack(spacing: 40){
            HStack{
                Text("Trivia")
                    .accentTitle()
                Spacer()
                Text("1 out of 10")
                    .foregroundColor(Color("purple"))
                    .fontWeight(.bold)
            }
            
         progressBar(progress: 50)
            
         VStack(alignment: .leading, spacing: 20){
                Text("Bulls are attracted ot the colour red?")
                 .font(.system(size: 20, weight: .light))
             
             answerRow(answer: Answer(text: "True", isCorrect: false))
             answerRow(answer: Answer(text: "False", isCorrect: true))
            }
            
            primaryButton(text: "Next")
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [Color(.white), Color(.lightGray).opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .navigationBarBackButtonHidden()
    }
}

struct questionView_Previews: PreviewProvider {
    static var previews: some View {
        questionView()
    }
}
