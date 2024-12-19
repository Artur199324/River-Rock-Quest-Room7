
import SwiftUI

struct QuestButton: View {
    let title: String
     let action: () -> Void

     var body: some View {
         Button(action: action) {
             HStack {
                 Text(title)
                     .foregroundColor(.white)
                     .font(.system(size: 18, weight: .medium))
                     .padding(.leading, 20)
                 Spacer()
                 Image(systemName: "chevron.right")
                     .foregroundColor(.white)
                     .padding(.trailing, 20)
             }
             .frame(maxWidth: .infinity, minHeight: 60)
             .background(Color.gray.opacity(0.2))
             .cornerRadius(10)
         }
     }
}

#Preview {
    QuestButton(title: "Outer Space Rescue") {
        
    }
}
