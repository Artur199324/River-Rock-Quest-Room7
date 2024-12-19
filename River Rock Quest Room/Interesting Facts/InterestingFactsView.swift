import SwiftUI

struct InterestingFactsView: View {
    @Environment(\.dismiss) var dismiss
    @State var in1 = false
    @State var in2 = false
    @State var in3 = false
    @State var in4 = false
    @State var in5 = false
    @State var in6 = false
    @State var in7 = false
    @State var in8 = false
    @State var in9 = false
    @State var in10 = false
    @State var in11 = false
    @State var in12 = false
    @State var in13 = false
    @State var in14 = false
    @State var in15 = false

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
                
                Text("Interesting Facts")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.trailing, 30)
                
                Spacer()
            }
            .padding(.top, 70)
            ScrollView{
                              QuestButton(title: "The Prophecy") {
                                  in1.toggle()
                               }
                               QuestButton(title: "The Lost Mine") {
                                   in2.toggle()
                               }
                               QuestButton(title: "2055") {
                                   in3.toggle()
                               }
                               QuestButton(title: "Pirate's Cove") {
                                   in4.toggle()
                               }
                               QuestButton(title: "The Haunted Manor") {
                                   in5.toggle()
                               }
                               QuestButton(title: "Escape from Alcatraz") {
                                   in6.toggle()
                               }
                               QuestButton(title: "The Pharaoh’s Tomb") {
                                   in7.toggle()
                               }
                               QuestButton(title: "Spy Mission: Omega Protocol") {
                                   in8.toggle()
                               }
                               QuestButton(title: "Wonderland Adventures") {
                                   in9.toggle()
                               }
                               QuestButton(title: "Zombie Apocalypse") {
                                   in10.toggle()
                               }
                               QuestButton(title: "The Wizard’s Keep") {
                                   in11.toggle()
                               }
                               QuestButton(title: "The Heist") {
                                   in12.toggle()
                               }
                               QuestButton(title: "Submarine SOS") {
                                   in13.toggle()
                               }
                               QuestButton(title: "Carnival of Chaos") {
                                   in14.toggle()
                               }
                               QuestButton(title: "Outer Space Rescue") {
                                   in14.toggle()
                               }
                
            }.padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $in1) {
                FactsView1()
            }
            .fullScreenCover(isPresented: $in2) {
                FactsView2()
            }
            .fullScreenCover(isPresented: $in3) {
                FactsView3()
            }
            .fullScreenCover(isPresented: $in4) {
                FactsView4()
            }
            .fullScreenCover(isPresented: $in5) {
                FactsView5()
            }
            .fullScreenCover(isPresented: $in6) {
                FactsView6()
            }
            .fullScreenCover(isPresented: $in7) {
                FactsView7()
            }
            .fullScreenCover(isPresented: $in8) {
                FactsView8()
            }
            .fullScreenCover(isPresented: $in9) {
                FactsView9()
            }
            .fullScreenCover(isPresented: $in10) {
                FactsView10()
            }
            .fullScreenCover(isPresented: $in11) {
                FactsView11()
            }
            .fullScreenCover(isPresented: $in12) {
                FactsView12()
            }
            .fullScreenCover(isPresented: $in13) {
                FactsView13()
            }
            .fullScreenCover(isPresented: $in14) {
                FactsView14()
            }
            .fullScreenCover(isPresented: $in15) {
                FactsView15()
            }
    }
}

#Preview {
    InterestingFactsView()
}
