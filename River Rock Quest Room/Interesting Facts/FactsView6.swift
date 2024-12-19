
import SwiftUI

struct FactsView6: View {
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
                Image("det6 1")
                
                HStack{
                    Text("Escape from Alcatraz")
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
                    
                    Text("The Escape from Alcatraz room is based on the infamous 1962 escape attempt by Frank Morris and the Anglin brothers. The character of The Mastermind mirrors Morris, known for his intelligence and resourcefulness. \n \nThe Warden and Guard characters highlight the strict security measures of the real Alcatraz prison. The room's puzzles include period-specific props, like hand-carved tools and old prison maps, making players feel as though they’ve traveled back in time.\n \nThis historical depth adds a layer of authenticity that sets the room apart from standard escape experiences.")
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
    FactsView6()
}
