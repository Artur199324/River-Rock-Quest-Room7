
import SwiftUI

struct FactsView4: View {
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
                Image("det4 1")
                
                HStack{
                    Text("Pirate’s Cove")
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
                    
                    Text("The legend of Captain Blackbeard serves as the inspiration for this escape room. Historical accounts of Blackbeard describe him as a cunning and strategic pirate, known for his intimidating appearance and clever use of deception\n \nThe room’s design includes references to real pirate lore, like a treasure chest modeled after one found in the Caribbean. The Cursed Sailor character adds a supernatural twist, hinting at tales of ghost ships and haunted treasures.  \n \nThe Mermaid provides a whimsical element, blending myth with history. This combination of authentic maritime themes and fantasy creates an unforgettable adventure.")
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
    FactsView4()
}
