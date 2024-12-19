

import SwiftUI

struct FactsView8: View {
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
                Image("det8 1")
                
                HStack{
                    Text("Spy Mission: Omega Protocol")
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
                    
                    Text("Spy Mission: Omega Protocol borrows themes from real-life Cold War espionage. The character of Agent X embodies the enigmatic, highly skilled operatives of that era.  \n \nThe Double Agent represents the duplicity and mistrust often seen in covert missions. The room uses cutting-edge technology, such as laser mazes and biometric scanners, to create a thrilling, immersive experience. \n \nPlayers get a hands-on understanding of spy tactics, blending reality and fiction to provide both excitement and a deeper appreciation for the world of intelligence operations")
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
    FactsView8()
}
