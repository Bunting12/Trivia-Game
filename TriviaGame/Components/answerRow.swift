//
//  answerRow.swift
//  TriviaGame
//
//  Created by David Bunting on 24.02.23.
//

import SwiftUI

struct answerRow: View {
    @State private var isSelected = false
    var answer: Answer
    var green = Color(.systemGreen)
    var red = Color(.systemRed)
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(answer.text)
                .fontWeight(.bold)
                .foregroundColor(isSelected ? (answer.isCorrect ? green : red) : .gray)
            
            Spacer()
            
            if isSelected{
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(isSelected ? (answer.isCorrect ? green : red) : .gray)
        .background(Color(.white))
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray, radius: 5, x: 5, y: 5)
        .onTapGesture {
            isSelected = true
        }
    }
}

struct answerRow_Previews: PreviewProvider {
    static var previews: some View {
        answerRow(answer: Answer(text: "Yes", isCorrect: true))
    }
}
