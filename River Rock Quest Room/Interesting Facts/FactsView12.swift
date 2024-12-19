

import SwiftUI

struct FactsView12: View {
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
                
                Text("Details")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.trailing, 50)
                
                Spacer()
            }
            .padding(.top, 70)
            ScrollView{
                Image("det12 1")
                
                HStack{
                    Text("The Heist")
                        .foregroundColor(.white)
                        .font(.title)
                    Spacer()
                }.padding()
                
                VStack{
                    HStack{
                        Text("Descriptions")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }.padding()
                    
                    Text("The Heist room’s storyline revolves around stealing a fictional artifact called “The Eye of Eternity,” rumored to bring good luck to its possessor.\n \nThe Mastermind character echoes famous heist leaders from film, guiding players with cryptic instructions. The Hacker adds a tech-savvy edge, offering hints for bypassing virtual locks and alarms. \n \nThe room’s realistic security systems, including laser grids and surveillance footage, make players feel like they’re in a high-stakes operation.")
                        .foregroundColor(.white).padding()
                }.frame(maxWidth: .infinity)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding()
            }
            
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
    }
}



#Preview {
    FactsView12()
}
