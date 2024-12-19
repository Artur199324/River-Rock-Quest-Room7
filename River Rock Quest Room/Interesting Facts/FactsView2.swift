
import SwiftUI

struct FactsView2: View {
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
                Image("det2 1")
                
                HStack{
                    Text("The Lost Mine")
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
                    
                    Text("The Lost Mine escape room draws inspiration from the historic Britannia Mine, once a bustling hub during British Columbia's mining boom\n \nhardworking individuals who toiled underground, facing daily perils. The Foreman represents the leadership that ensured operations ran smoothly, while The Treasure Hunter adds a layer of intrigue, symbolizing those who sought fortune and adventure.\n \nThe room's design incorporates authentic mining tools and artifacts, providing players with a glimpse into the past. This historical context enriches the experience, offering both entertainment and education about the region's rich mining heritage")
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
    FactsView2()
}
