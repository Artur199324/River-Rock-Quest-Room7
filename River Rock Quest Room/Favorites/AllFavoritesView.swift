import SwiftUI

struct AllFavoritesView: View {
    @Environment(\.dismiss) var dismiss
    let userPreferences = UserPreferences()
    @State private var selectedNumber: Int = 0
    @State private var showDetails = false
    let locations: [LocationData] = [
        LocationData(title: "The Prophecy", address: "3471 No. 3 Road, Richmond, BC", image: "lok1"),
        LocationData(title: "The Lost Mine", address: "3471 No. 3 Road, Richmond, BC", image: "lok2"),
        LocationData(title: "2055", address: "3471 No. 3 Road, Richmond, BC", image: "lok3"),
        LocationData(title: "Pirate’s Cove", address: "1235 Stevenson Highway, Richmond, BC", image: "lok4"),
        LocationData(title: "The Haunted Manor", address: "5800 Minoru Blvd, Richmond, BC", image: "lok5"),
        LocationData(title: "Escape from Alcatraz", address: "4320 Cambie Road, Richmond, BC", image: "lok6"),
        LocationData(title: "The Pharaoh’s Tomb", address: "2300 River Road, Richmond, BC", image: "lok7"),
        LocationData(title: "Spy Mission: Omega Protocol", address: "8788 McKim Way, Richmond, BC", image: "lok8"),
        LocationData(title: "Wonderland Adventures", address: "4530 Hazelbridge Way, Richmond, BC", image: "lok9"),
        LocationData(title: "Zombie Apocalypse", address: "7000 Williams Road, Richmond, BC", image: "lok10"),
        LocationData(title: "The Wizard’s Keep", address: "5000 No. 3 Road, Richmond, BC", image: "lok11"),
        LocationData(title: "The Heist", address: "8888 Westminster Highway, Richmond, BC", image: "lok12"),
        LocationData(title: "Submarine SOS", address: "6340 No. 3 Road, Richmond, BC", image: "lok13"),
        LocationData(title: "Carnival of Chaos", address: "7590 Alderbridge Way, Richmond, BC", image: "lok14"),
        LocationData(title: "Outer Space Rescue", address: "12100 Bridgeport Road, Richmond, BC", image: "lok15")
    ]
    var body: some View {
        VStack {
            HStack {
                Button {
                    self.dismiss()
                } label: {
                    Image("Frame 15")
                }
                .padding(.leading, 30)
                
                Spacer()
                
                Text("Favorites")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.trailing, 30)
                
                Spacer()
            }
            .padding(.top, 70)
            
            ScrollView {
                if let items = userPreferences.getItems(), !items.isEmpty {
                    ForEach(items, id: \.self) { number in
                        if number - 1 >= 0 && number - 1 < locations.count {
                            let location = locations[number - 1]
                            LocationButton(
                                title: location.title,
                                address: location.address,
                                image: location.image,
                                action: {
                                    handleButtonTap(number: number)
                                }
                            )
                        }
                    
                                     }
                } else {
                    Text("Nothing has been saved to favorites yet")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .padding()
                }
            }.padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("launch").resizable().scaledToFill())
        .ignoresSafeArea()
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 1 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView1()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 2 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView2()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 3 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView3()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 4 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView4()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 5 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView5()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 6 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView6()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 7 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView7()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 8 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView8()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 9 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView9()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 10 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView10()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 11 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView11()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 12 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView12()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 13 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView13()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 14 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView14()
        }
        .fullScreenCover(isPresented: Binding(
            get: { selectedNumber == 15 && showDetails },
            set: { if !$0 { showDetails = false } }
        )) {
            DetailsQuestRoomsView15()
        }
    }
    private func handleButtonTap(number: Int) {
        selectedNumber = number
        showDetails = true
    }
}
struct LocationData {
    let title: String
    let address: String
    let image: String
}

#Preview {
    AllFavoritesView()
}
