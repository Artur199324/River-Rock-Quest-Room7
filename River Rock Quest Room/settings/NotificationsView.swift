
import SwiftUI

struct NotificationsView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            HStack {
                Button {
                    self.dismiss()
                } label: {
                    Image("Frame 15")
                }
                .padding(.leading, 30)
                
                Spacer()
                
                Text("Notifications")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.trailing, 50)
                
                Spacer()
            }
            .padding(.top, 70)
            
            HStack{
                Text("This displays all the updates and reminders that come to you in the app").foregroundColor(.white)
                    .font(.title2).padding()
            }.frame(maxWidth: .infinity)
                .background(Color.black.opacity(0.2))
                .cornerRadius(10)
                .padding(.bottom, 10)
                .padding()
            Spacer()
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
    }
}

#Preview {
    NotificationsView()
}
