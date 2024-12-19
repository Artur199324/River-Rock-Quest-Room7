

import SwiftUI

struct FactsView5: View {
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
                Image("det5 1")
                
                HStack{
                    Text("The Haunted Manor")
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
                    
                    Text("The Haunted Manor's storyline is loosely based on the legend of Lady Eleanor, a 19th-century figure rumored to haunt a mansion in the Richmond area.\n \nThe character of Lady Eleanor in the escape room is portrayed as a tragic figure, trapped by a curse tied to her lost love. The Phantom Child reflects the Victorian era’s fascination with ghost stories, while The Groundskeeper adds a layer of mystery as both protector and potential villain.  \n \nThe room uses advanced sound effects and lighting to create an eerie ambiance, making players feel as though they're part of a living ghost story.")
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
    FactsView5()
}
