import SwiftUI

struct WelcomeView: View {
    @State private var riverRovk = false
    let userPreferences = UserPreferences()
    var body: some View {
        VStack {
            ScrollView{
                Text("Welcome").foregroundColor(.white).bold().padding(.top, 80)
                if userPreferences.getLog() == 1{
                    Text(userPreferences.getUsername() ?? "Guest")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                        .padding(.top, 20)
                        .padding()
                }else{
                    Text("Guest")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                        .padding(.top, 20)
                        .padding()
                }
                
                switch userPreferences.getGender() {
                case 1:
                    if userPreferences.getLog() == 1{
                        Image("f1")
                        Text("Thank you for registering! Now you can fully use the app, book quests and receive notification, as well as use feedback").foregroundColor(.white).padding(50)   .multilineTextAlignment(.center)
                    }else{
                        Image("f3")
                        Text("Thank you for using our app. We hope you enjoy it").foregroundColor(.white).padding(50)   .multilineTextAlignment(.center)
                    }
                case 2:
                    if userPreferences.getLog() == 1{
                        Image("f2")
                        Text("Thank you for registering! Now you can fully use the app, book quests and receive notification, as well as use feedback").foregroundColor(.white).padding(50)   .multilineTextAlignment(.center)
                    }else{
                        Image("f3")
                        Text("Thank you for using our app. We hope you enjoy it").foregroundColor(.white).padding(50)   .multilineTextAlignment(.center)
                    }
                default:
                    Image("f3")
                    Text("Thank you for using our app. We hope you enjoy it").foregroundColor(.white).padding(50)   .multilineTextAlignment(.center)
                }
                
                Spacer()
                
                Button {
                    riverRovk.toggle()
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
                }.padding(.bottom, 30)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("launch").resizable().scaledToFill())
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $riverRovk) {
            RiverRockQuestRoomsView()
        }
    }
}

#Preview {
    WelcomeView()
}
