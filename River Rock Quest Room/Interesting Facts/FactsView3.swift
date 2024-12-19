

import SwiftUI

struct FactsView3: View {
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
                Image("det3 1")
                
                HStack{
                    Text("2055")
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
                    
                    Text("The character of The AI in \"2055\" is inspired by classic science fiction narratives, embodying both the potential and pitfalls of advanced technology. The Rebel Leader reflects the timeless theme of resistance against oppressive systems, while The Time Traveler adds a unique element, drawing from classic time-travel tales that explore the consequences of altering the future.\n \nThe room's storyline touches on ethical dilemmas, such as the role of technology in shaping society and humanity's reliance on artificial intelligence. The design incorporates interactive holograms, advanced puzzles requiring collaboration with \"The AI,\" and even voice-controlled tasks. \n \nThe immersive elements make players feel as though they're navigating a world where science fiction meets reality, emphasizing both innovation and caution about the future. This room provides a thrilling yet thought-provoking experience.")
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
    FactsView3()
}
