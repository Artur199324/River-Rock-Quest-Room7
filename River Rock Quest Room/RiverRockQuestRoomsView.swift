import SwiftUI

struct RiverRockQuestRoomsView: View {
    @State private var next = 1
    @State private var home = false
    var body: some View {
        VStack{
            ScrollView{
                Text("River Rock Quest Rooms").foregroundColor(.white).bold().padding(.top,80)
                switch next {
                case 1 :
                    Image("image1").padding(.top,30)
                    Text("Explore Richmond’s top escape rooms, from magical castles to zombie apocalypses. Solve puzzles, uncover secrets, and race against time. Adventure awaits—are you ready?")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center).padding()
                    Spacer()
                    Button(action: {
                        home.toggle()
                               }) {
                                   Text("Skip")
                                       .font(.system(size: 18, weight: .bold))
                                       .foregroundColor(.white)
                                       .frame(maxWidth: .infinity, minHeight: 50)
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 10)
                                               .stroke(
                                                   LinearGradient(
                                                       gradient: Gradient(colors: [Color.orange, Color.purple]),
                                                       startPoint: .leading,
                                                       endPoint: .trailing
                                                   ),
                                                   lineWidth: 2
                                               )
                                       )
                               }.padding(.horizontal,20)

                            
                               Button(action: {
                                   next = 2
                               }) {
                                   Text("Next")
                                       .font(.system(size: 18, weight: .bold))
                                       .foregroundColor(.white)
                                       .frame(maxWidth: .infinity, minHeight: 50)
                                       .background(
                                           LinearGradient(
                                               gradient: Gradient(colors: [Color.orange, Color.purple]),
                                               startPoint: .leading,
                                               endPoint: .trailing
                                           )
                                       )
                                       .cornerRadius(10)
                               }
                               .padding(.bottom,30)
                               .padding(.horizontal,20)
                  
                    
                    
                case 2 : Image("image2").padding(.top,30)
                    Text("Challenge cunning villains like the Dark Sorcerer or the Alpha Zombie. Work with allies like the AI Navigator to complete your mission. Every escape room offers unforgettable stories and characters.")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center).padding()
                    Spacer()
                    
                    Button(action: {
                        home.toggle()
                               }) {
                                   Text("Skip")
                                       .font(.system(size: 18, weight: .bold))
                                       .foregroundColor(.white)
                                       .frame(maxWidth: .infinity, minHeight: 50)
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 10)
                                               .stroke(
                                                   LinearGradient(
                                                       gradient: Gradient(colors: [Color.orange, Color.purple]),
                                                       startPoint: .leading,
                                                       endPoint: .trailing
                                                   ),
                                                   lineWidth: 2
                                               )
                                       )
                               }.padding(.horizontal,20)

                            
                               Button(action: {
                                   next = 3
                               }) {
                                   Text("Next")
                                       .font(.system(size: 18, weight: .bold))
                                       .foregroundColor(.white)
                                       .frame(maxWidth: .infinity, minHeight: 50)
                                       .background(
                                           LinearGradient(
                                               gradient: Gradient(colors: [Color.orange, Color.purple]),
                                               startPoint: .leading,
                                               endPoint: .trailing
                                           )
                                       )
                                       .cornerRadius(10)
                               }
                               .padding(.bottom,30)
                               .padding(.horizontal,20)
                 
                case 3 : Image("image3").padding(.top,30)
                    Text("Find your perfect escape room with just a few taps. Browse by theme, group size, or difficulty level. Plan your adventure and make unforgettable memories!")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center).padding()
                    Spacer()
                    
                    Button(action: {
                        home.toggle()
                    }) {
                        Text("Get Started")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.purple]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(10)
                    }
                    .padding(.bottom,30)
                    .padding(.horizontal,20)
                    

                default:
                    Image("image1")
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $home) {
                MyHomeView()
            }
    }
}

#Preview {
    RiverRockQuestRoomsView()
}
