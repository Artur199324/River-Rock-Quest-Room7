
import SwiftUI

struct LocationButton: View {
    var title: String
    var address: String
    var image: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
              
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(8)
                    .padding(.leading, 10)
                
                VStack(alignment: .leading, spacing: 5) {
                    // Title
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                   
                    Text(address)
                        .font(.subheadline)
                        .foregroundColor(.orange)
                }
                Spacer()
                
               
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
                    .padding(.trailing, 10)
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(Color.black.opacity(0.8))
            .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

#Preview {
    LocationButton(
                       title: "The Prophecy",
                       address: "3471 No. 3 Road, Richmond, BC",
                       image: "lok1"
                   ) {
                       print("loc1")
                   }
}
