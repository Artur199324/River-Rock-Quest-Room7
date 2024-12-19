

import SwiftUI

struct QuizButton: View {
    let title: String
     let difficulty: String
     let backgroundColor: Color
     let action: () -> Void

     var body: some View {
         Button(action: action) { 
             HStack {
                 Text(title)
                     .foregroundColor(.white)
                     .font(.system(size: 18, weight: .bold))
                     .padding(.leading, 20)

                 Spacer()

                 Text(difficulty)
                     .foregroundColor(.white)
                     .font(.system(size: 16, weight: .regular))
                     .padding(.trailing, 20)
             }
             .frame(maxWidth: .infinity, minHeight: 60)
             .background(backgroundColor)
             .cornerRadius(10)
         }
     }
}

#Preview {
    QuizButton(title: "Quiz 4", difficulty: "Very Hard", backgroundColor: .blue){
        
    }
}
