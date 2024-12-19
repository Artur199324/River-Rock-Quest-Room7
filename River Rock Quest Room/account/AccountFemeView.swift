import SwiftUI

struct AccountFemeView: View {
    @State private var selectedButton: Int? = nil
    @State private var showAlert = false
    @State private var welcome = false
    
    let userPreferences = UserPreferences()
    var body: some View {
        VStack{
            Text("Create Account").foregroundColor(.white).bold().padding(.top,80)
            Text("Select the avatar to be displayed in the application").foregroundColor(.white).bold().font(.title2).padding(.top,20).padding()
                .padding(.horizontal,20)
            HStack(spacing: 0) {
                 Button {
                     selectedButton = 1
                 } label: {
                     Image("Frame 132")
                         .padding()
                         .background(
                             selectedButton == 1 ? Color.orange : Color.clear
                         )
                         .cornerRadius(100)
                         .overlay(
                             RoundedRectangle(cornerRadius: 100)
                                 .stroke(
                                     selectedButton == 1 ? Color.orange : Color.clear, lineWidth: 3
                                 )
                         )
                 }.padding(.leading,10)

    
                 Button {
                     selectedButton = 2
                 } label: {
                     Image("Frame 14")
                      
                         .padding()
                         .background(
                             selectedButton == 2 ? Color.orange : Color.clear
                         )
                         .cornerRadius(100)
                         .overlay(
                             RoundedRectangle(cornerRadius: 100)
                                 .stroke(
                                     selectedButton == 2 ? Color.orange : Color.clear, lineWidth: 3
                                 )
                         )
                 }.padding(.trailing,10)
             }
             .padding(.top, 50)
            
            Spacer()
            Button {
                if selectedButton != nil {
                    userPreferences.saveGender(gender: selectedButton ?? 1)
                    userPreferences.saveLog(1)
                    welcome.toggle()
                }else{
                    showAlert.toggle()
                }
            } label: {
                Text("Continue")
                               .foregroundColor(.white)
                               .font(.system(size: 20, weight: .bold))
                               .frame(maxWidth: .infinity, minHeight: 70) 
                               .background(
                                   LinearGradient(
                                       gradient: Gradient(colors: [Color.orange, Color.purple]),
                                       startPoint: .leading,
                                       endPoint: .trailing
                                   )
                               )
                               .cornerRadius(20)
            }.padding(.bottom,60)
                .padding(.horizontal,20)
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Error"),
                        message: Text("Select your gender"),
                        dismissButton: .default(Text("OK"))
                    )
                }
                
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $welcome) {
                WelcomeView()
            }
    }
}

#Preview {
    AccountFemeView()
}
