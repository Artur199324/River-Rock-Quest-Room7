

import SwiftUI

struct FactsView10: View {
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
                Image("det10 1")
                
                HStack{
                    Text("Zombie Apocalypse")
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
                    
                    Text("The Alpha Zombie character in this escape room is based on scientific theories about genetic mutations that could lead to aggressive behavior. \n \nThe storyline incorporates realistic bioengineering elements, with props like vials, microscopes, and “infected” cells. The immersive experience challenges players to think critically under pressure, simulating what it might feel like to survive a real apocalypse. \n \nThe blend of science fiction and survival horror makes this room both chilling and intellectually engaging.")
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
    FactsView10()
}
