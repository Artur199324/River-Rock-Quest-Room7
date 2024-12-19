

import SwiftUI

struct QuestRoomsView: View {
    @Environment(\.dismiss) var dismiss
    @State var q1 = false
    @State var q2 = false
    @State var q3 = false
    @State var q4 = false
    @State var q5 = false
    @State var q6 = false
    @State var q7 = false
    @State var q8 = false
    @State var q9 = false
    @State var q10 = false
    @State var q11 = false
    @State var q12 = false
    @State var q13 = false
    @State var q14 = false
    @State var q15 = false
    @State var qw1 = false
    @State var qw2 = false
    @State var qw3 = false
    @State var qw4 = false
    @State var qw5 = false
    @State var qw6 = false
    @State var qw7 = false
    @State var qw8 = false
    @State var qw9 = false
    @State var qw10 = false
    @State var qw11 = false
    @State var qw12 = false
    @State var qw13 = false
    @State var qw14 = false
    @State var qw15 = false
    var body: some View {
        ScrollView{
            ZStack {
                
                Image("quest rooms")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Button {
                            self.dismiss()
                        } label: {
                            Image("Frame 13")
                        }.padding(.leading,30)
                        Spacer()
                        Text("Quest Rooms")
                            .frame(maxWidth: 150,maxHeight: 40)
                            .background(.orange)
                            .cornerRadius(100)
                            .foregroundColor(.white)
                            .padding(.trailing,50)
                            .bold()
                        Spacer()
                        
                        
                        
                    }.padding(.top,70)
                    
                    ZStack {
                        
                        Button {
                            neQ()
                            q7.toggle()
                        } label: {
                            Image(q7 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 250, y: 50)
                        
                        Button {
                            neQ()
                            q1.toggle()
                        } label: {
                            
                            Image(q1 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 60, y: 100)
                        Button {
                            neQ()
                            q3.toggle()
                        } label: {
                            Image(q3 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 200, y: 120)
                        
                        Button {
                            neQ()
                            q4.toggle()
                        } label: {
                            Image(q4 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 350, y: 140)
                        Button {
                            neQ()
                            q5.toggle()
                        } label: {
                            Image(q5 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 150, y: 200)
                        Button {
                            neQ()
                            q6.toggle()
                        } label: {
                            Image(q6 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 250, y: 230)
                        Button {
                            neQ()
                            q10.toggle()
                        } label: {
                            Image(q10 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 320, y: 310)
                        Button {
                            neQ()
                            q9.toggle()
                        } label: {
                            Image(q9 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 190, y: 330)
                        Button {
                            neQ()
                            q8.toggle()
                        } label: {
                            Image(q8 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 85, y: 310)
                        Button {
                            neQ()
                            q11.toggle()
                        } label: {
                            Image(q11 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 260, y: 400)
                        Button {
                            neQ()
                            q12.toggle()
                        } label: {
                            Image(q12 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 170, y: 460)
                        Button {
                            neQ()
                            q13.toggle()
                        } label: {
                            Image(q13 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 250, y: 470)
                        Button {
                            neQ()
                            q14.toggle()
                        } label: {
                            Image(q14 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 110, y: 510)
                        Button {
                            neQ()
                            q2.toggle()
                        } label: {
                            Image(q2 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 350, y: 530)
                        
                        Button {
                            neQ()
                            q15.toggle()
                        } label: {
                            Image(q15 ? "location-star-02" : "location-star-01")
                        }
                        .position(x: 260, y: 570)
                    }
                    
                    
                    HStack{
                        
                        
                        if q1{
                            LocationButton(
                                title: "The Prophecy",
                                address: "3471 No. 3 Road, Richmond, BC",
                                image: "lok1"
                            ) {
                                qw1.toggle()
                            }
                            
                        }
                        
                        if q2{
                            LocationButton(
                                title: "The Lost Mine",
                                address: "3471 No. 3 Road, Richmond, BC",
                                image: "lok2"
                            ) {
                                qw2.toggle()
                            }
                        }
                        
                        if q3{
                            LocationButton(
                                title: "2055",
                                address: "3471 No. 3 Road, Richmond, BC",
                                image: "lok3"
                            ) {
                                qw3.toggle()
                            }
                        }
                        
                        if q4{
                            LocationButton(
                                title: "Pirate’s Cove",
                                address: "1235 Stevenson Highway, Richmond, BC",
                                image: "lok4"
                            ) {
                                qw4.toggle()
                            }
                        }
                        
                        if q5{
                            LocationButton(
                                title: "The Haunted Manor",
                                address: "5800 Minoru Blvd, Richmond, BC",
                                image: "lok5"
                            ) {
                                qw5.toggle()
                            }
                        }
                        
                        if q6{
                            LocationButton(
                                title: "Escape from Alcatraz",
                                address: "4320 Cambie Road, Richmond, BC",
                                image: "lok6"
                            ) {
                                qw6.toggle()
                            }
                        }
                        
                        if q7{
                            LocationButton(
                                title: "The Pharaoh’s Tomb",
                                address: "2300 River Road, Richmond, BC",
                                image: "lok7"
                            ) {
                                qw7.toggle()
                            }
                        }
                        
                        if q8{
                            LocationButton(
                                title: "Spy Mission: Omega Protocol",
                                address: "8788 McKim Way, Richmond, BC",
                                image: "lok8"
                            ) {
                                qw8.toggle()
                            }
                        }
                        
                        if q9{
                            LocationButton(
                                title: "Wonderland Adventures",
                                address: "4530 Hazelbridge Way, Richmond, BC",
                                image: "lok9"
                            ) {
                                qw9.toggle()
                            }
                        }
                        
                        if q10{
                            LocationButton(
                                title: "Zombie Apocalypse",
                                address: "7000 Williams Road, Richmond, BC",
                                image: "lok10"
                            ) {
                                qw10.toggle()
                            }
                        }
                        
                        if q11{
                            LocationButton(
                                title: "The Wizard’s Keep",
                                address: "5000 No. 3 Road, Richmond, BC",
                                image: "lok11"
                            ) {
                                qw11.toggle()
                            }
                        }
                        
                        if q12{
                            LocationButton(
                                title: "The Heist",
                                address: "8888 Westminster Highway, Richmond, BC",
                                image: "lok12"
                            ) {
                                qw12.toggle()
                            }
                        }
                        
                        if q13{
                            LocationButton(
                                title: "Submarine SOS",
                                address: "6340 No. 3 Road, Richmond, BC",
                                image: "lok13"
                            ) {
                                qw13.toggle()
                            }
                        }
                        
                        if q14{
                            LocationButton(
                                title: "Carnival of Chaos",
                                address: "7590 Alderbridge Way, Richmond, BC",
                                image: "lok14"
                            ) {
                                qw14.toggle()
                            }
                        }
                        
                        if q15{
                            LocationButton(
                                title: "Outer Space Rescue",
                                address: "12100 Bridgeport Road, Richmond, BC",
                                image: "lok15"
                            ) {
                                qw15.toggle()
                            }
                        }
                        
                    }.padding(.bottom,30)
                    Spacer()
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                    .fullScreenCover(isPresented: $qw1) {
                        DetailsQuestRoomsView1()
                    }
                    .fullScreenCover(isPresented: $qw2) {
                        DetailsQuestRoomsView2()
                    }
                    .fullScreenCover(isPresented: $qw3) {
                        DetailsQuestRoomsView3()
                    }
                    .fullScreenCover(isPresented: $qw4) {
                        DetailsQuestRoomsView4()
                    }
                    .fullScreenCover(isPresented: $qw5) {
                        DetailsQuestRoomsView5()
                    }
                    .fullScreenCover(isPresented: $qw6) {
                        DetailsQuestRoomsView6()
                    }
                    .fullScreenCover(isPresented: $qw7) {
                        DetailsQuestRoomsView7()
                    }
                    .fullScreenCover(isPresented: $qw8) {
                        DetailsQuestRoomsView8()
                    }
                    .fullScreenCover(isPresented: $qw9) {
                        DetailsQuestRoomsView9()
                    }
                    .fullScreenCover(isPresented: $qw10) {
                        DetailsQuestRoomsView10()
                    }
                    .fullScreenCover(isPresented: $qw11) {
                        DetailsQuestRoomsView11()
                    }
                    .fullScreenCover(isPresented: $qw12) {
                        DetailsQuestRoomsView12()
                    }
                    .fullScreenCover(isPresented: $qw13) {
                        DetailsQuestRoomsView13()
                    }
                    .fullScreenCover(isPresented: $qw14) {
                        DetailsQuestRoomsView14()
                    }
                    .fullScreenCover(isPresented: $qw15) {
                        DetailsQuestRoomsView15()
                    }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
    }
    
    private func neQ(){
        q1 = false
        q2 = false
        q3 = false
        q4 = false
        q5 = false
        q6 = false
        q7 = false
        q8 = false
        q9 = false
        q10 = false
        q11 = false
        q12 = false
        q13 = false
        q14 = false
        q15 = false
    }
}

#Preview {
    QuestRoomsView()
}
