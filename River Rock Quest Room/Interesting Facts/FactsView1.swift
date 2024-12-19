
import SwiftUI

struct FactsView1: View {
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
                Image("det1 1")
                
                HStack{
                    Text("The Prophecy")
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
                    
                    Text("The Oracle, a central character in \"The Prophecy,\" is inspired by the ancient Greek Pythia, known for her cryptic predictions. The room's design incorporates elements reminiscent of the Temple of Apollo, where the Pythia delivered her prophecies. \n \nPlayers often feel as though they've stepped back in time, experiencing the mystique of ancient divination practices. The Guardian character draws parallels to mythical creatures that protected sacred sites, adding an element of challenge and intrigue.\n \nThe Chosen One represents the player, emphasizing the personalized nature of the quest. This blend of historical and mythical references creates a rich, immersive experience that educates as well as entertains.")
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
    FactsView1()
}
