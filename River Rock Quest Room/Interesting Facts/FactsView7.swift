

import SwiftUI

struct FactsView7: View {
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
                Image("det7 1")
                
                HStack{
                    Text("The Pharaoh’s Tomb")
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
                    
                    Text("The Pharaoh’s Tomb escape room is inspired by the discovery of Tutankhamun's tomb by Howard Carter in 1922. \n \nThe room’s character, The High Priest, reflects the guardians of ancient tombs who protected treasures from looters. The Pharaoh character adds a supernatural element, emphasizing the curse often associated with Egyptian artifacts\n \nThe design incorporates hieroglyphic puzzles, replicas of ancient artifacts, and hidden passageways. \n\nPlayers feel like explorers uncovering secrets of a lost civilization, blending historical accuracy with an engaging, fictional adventure")
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
    FactsView7()
}
