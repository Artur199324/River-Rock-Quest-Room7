

import SwiftUI

struct FactsView11: View {
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
                Image("det11 1")
                
                HStack{
                    Text("The Wizard’s Keep")
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
                    
                    Text("The Wizard’s Keep incorporates ancient runes and alchemy symbols into its puzzles, blending elements of real-world historical mysticism with fictional magic. \n \nThe Dark Sorcerer character, the primary antagonist, represents the age-old battle between good and evil in fantasy storytelling. The Wise Sage guides players with cryptic hints, while the Apprentice adds a layer of comic relief. \n \nThe room’s spellcasting tasks and enchanted props make it a truly immersive magical experience.")
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
    FactsView11()
}
