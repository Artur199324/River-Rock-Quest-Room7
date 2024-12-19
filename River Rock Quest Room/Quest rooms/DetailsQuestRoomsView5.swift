import SwiftUI

struct DetailsQuestRoomsView5: View {
    @Environment(\.dismiss) var dismiss
    @State var book = false
    @State var feedback = ""
    @State private var showErrorAlert = false
      @State private var showSuccessAlert = false
    @State private var selectedRating: Int = 0
    @State private var showThankYouAlert = false
    @State private var  userPreferences = UserPreferences()
    @State private var fore = false
    var body: some View {
        VStack{
            HStack{
                Button {
                    self.dismiss()
                } label: {
                    Image("Frame 15")
                }.padding(.leading,30)
                    
                Spacer()
                Text("Details")
                    .foregroundColor(.white)
                    .bold()
                Spacer()
                Button {
                    fore.toggle()
                    userPreferences.saveCurrentItem(5)
                } label: {
                    Image("favourite")
                }.padding(.trailing,30)
                
                
            }.padding(.top,70)
            ScrollView{
                Image("det5")
                    .overlay {
                        VStack{
                            Spacer()
                            HStack{
                                Spacer()
                                Button {
                                    book.toggle()
                                } label: {
                                    HStack {
                                                   Text("Book Now")
                                                       .font(.system(size: 11, weight: .bold))
                                                       .foregroundColor(.white)
                                                   Spacer()
                                                   Image(systemName: "star.fill")
                                                       .foregroundColor(.white)
                                               }
                                               .padding()
                                               .frame(height: 44)
                                               .frame(maxWidth: 130)
                                               .background(
                                                   LinearGradient(
                                                       gradient: Gradient(colors: [Color.orange, Color.purple]),
                                                       startPoint: .leading,
                                                       endPoint: .trailing
                                                   )
                                               )
                                               .cornerRadius(15)
                                               .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
                                }.padding()

                            }
                        }
                    }
              
                
                HStack{
                    Text("The Haunted Manor").font(.title)
                        .foregroundColor(.white)
                        .bold()
                    Spacer()
                }.padding()
                
                
                VStack{
                    HStack{
                        Text("Address")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("5800 Minoru Blvd, Richmond, BC")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                
                
                VStack{
                    HStack{
                        Text("Prices")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("$28 per person")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                VStack{
                    HStack{
                        Text("Capacity")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("3 to 8 players")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                VStack{
                    HStack{
                        Text("Optimal Visiting Time")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("Evenings for the full spooky experience")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                
                VStack{
                    HStack{
                        Text("Description")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("Step into a mysterious manor where ghosts and secrets lurk behind every corner. Solve eerie puzzles to escape before time runs out.")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                VStack{
                    HStack{
                        Text("Why Visit")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("Perfect for horror fans, with realistic effects and spine-chilling surprises.")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                VStack{
                    HStack{
                        Text("Suitable for Children")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("Recommended for ages 14 and up due to scary themes.")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                VStack{
                    HStack{
                        Text("Access Information")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("Located near Richmond Centre Mall, easily accessible by SkyTrain.")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                VStack{
                    HStack{
                        Text("History")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("Opened in 2016, inspired by local ghost stories and Gothic literature.")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                VStack{
                    HStack{
                        Text("Notable Characters")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("Lady Eleanor, The Groundskeeper, The Phantom Child.")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                VStack{
                    HStack{
                        Text("Rules")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("Respect the props; no touching the actors.")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                
                VStack{
                    HStack{
                        Text("Duration")
                            .foregroundColor(Color("myc2"))
                            .font(.title2)
                            .padding(.leading,20)
                            .padding(.top,10)
                        Spacer()
                    }
                    HStack{
                        Text("60 minutes")
                            .foregroundColor(.white)
                            .padding(.leading,20)
                            .padding(.top,5)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,20)
                
                
                VStack{
                    
                    
                    VStack{
                        HStack{
                            Image("m2").padding(.leading,10)
                                .padding(.top,10)
                            Text("Jessica L.").foregroundColor(.white).padding(.leading,10)
                            Spacer()
                            Text("November 1, 2024")
                                .foregroundColor(Color("myc2"))
                                .padding(.trailing,10)
                        }
                        
                        Text("The Haunted Manor is not for the faint-hearted! The jump scares were amazing, and the puzzles kept us on our toes.")
                            .padding(.bottom,10)
                            .foregroundColor(.white)
                            .padding()
                    }.frame(maxWidth: .infinity)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.top,30)
                        .padding()
                    
                    
                    VStack{
                        HStack{
                            Image("m1").padding(.leading,10)
                                .padding(.top,10)
                            Text("Tom H.").foregroundColor(.white).padding(.leading,10)
                            Spacer()
                            Text("November 15, 2024")
                                .foregroundColor(Color("myc2"))
                                .padding(.trailing,10)
                        }
                        
                        Text("I loved the storyline and the immersive atmosphere. It felt like stepping into a real haunted house!")
                            .padding(.bottom,10)
                            .foregroundColor(.white)
                            .padding()
                    }.frame(maxWidth: .infinity)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding()
                    
                    HStack{
                        Text("Add Your Feedback").font(.title2).foregroundColor(.white).bold()
                        Spacer()
                    }.padding()
                    
                    TextField("", text: $feedback)
                        .padding()
                        .padding(.leading, 20)
                        .foregroundColor(.white)
                        .frame(minHeight: 100)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding()
                        .overlay {
                            if feedback.isEmpty {
                                HStack {
                                    Text("Enter your Feedback")
                                        .foregroundColor(.white)
                                        .padding(.top, 10)
                                        .padding(.leading, 40)
                                    Spacer()
                                }
                            }
                        }
                    
                    Button {
                             if feedback.isEmpty {
                    
                                 showErrorAlert = true
                             } else {
                        
                                 showSuccessAlert = true
                             }
                         } label: {
                             Text("Add Feedback")
                                            .foregroundColor(.white)
                                            .font(.system(size: 20, weight: .bold))
                                            .frame(maxWidth: .infinity, minHeight: 50)
                                            .background(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [Color.orange, Color.purple]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                )
                                            )
                                            .cornerRadius(20)
                                            .padding(.horizontal,20)
                         }
                         .alert("Error", isPresented: $showErrorAlert) {
                             Button("OK", role: .cancel) {}
                         } message: {
                             Text("Feedback cannot be empty. Please enter your feedback.")
                         }
                         .alert("Success", isPresented: $showSuccessAlert) {
                             Button("OK", role: .cancel) {}
                         } message: {
                             Text("Your feedback has been submitted successfully!")
                         }
                         .alert("Success", isPresented: $fore) {
                             Button("OK", role: .cancel) {}
                         } message: {
                             Text("Added to favorites!")
                         }

                    
                    HStack{
                        Text("Rate this Material").font(.title2).foregroundColor(.white).bold()
                        Spacer()
                    }.padding()
                    
                    HStack {
                               ForEach(1...5, id: \.self) { index in
                                   Image(systemName: index <= selectedRating ? "star.fill" : "star")
                                       .resizable()
                                       .frame(width: 40, height: 40)
                                       .foregroundColor(index <= selectedRating ? .yellow : .gray)
                                       .onTapGesture {
                                           selectedRating = index
                                           showThankYouAlert = true
                                       }
                               }
                        Spacer()
                    }.padding()
                }.alert("Thank You!", isPresented: $showThankYouAlert) {
                    Button("OK", role: .cancel) {}
                } message: {
                    Text("Thank you for rating \(selectedRating) stars!")
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.top,30)
                
                
                
            }.padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $book) {
                BookingView()
            }
    }

}

#Preview {
    DetailsQuestRoomsView5()
}
