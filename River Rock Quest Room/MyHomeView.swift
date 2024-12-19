import SwiftUI

struct MyHomeView: View {
    let userPreferences = UserPreferences()
    @State var notifications = false
    @State var login = false
    @State var quest = false
    @State var favorites = false
    @State var facts = false
    @State var quiz = false
    @State var book = false
    @State var settings = false
    var currentDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, EEE"
        return formatter.string(from: Date())
    }
    var body: some View {
        VStack {
           
            HStack(spacing: 8) {
                switch userPreferences.getGender() {
                case 1:
                    if userPreferences.getLog() == 1{
                        Image("m1").padding(.leading, 20)
                    }else{
                        Image("m3").padding(.leading, 20)
                    }
                case 2:
                    if userPreferences.getLog() == 1{
                    Image("m2").padding(.leading, 20)
                    }else{
                        Image("m3").padding(.leading, 20)
                    }
                default:
                    Image("m3").padding(.leading, 20)
                }
                VStack(alignment: .leading, spacing: 4) {
                    if userPreferences.getLog() == 1{
                        Text(userPreferences.getUsername() ?? "Guest")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title3)
                    }else{
                        Text("Guest")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title3)
                    }
                    Text(currentDate)
                        .foregroundColor(.gray)
                }
                Spacer()
                if userPreferences.getLog() == 1{
                    Button {
                        notifications.toggle()
                    } label: {
                        Image("notification-02")
                    }
                } else {
                    HStack {
                        Button(action: {
                            login.toggle()
                        }) {
                            Text("Log In")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 80, height: 44)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color.orange, Color.purple]),
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            ),
                                            lineWidth: 2
                                        )
                                )
                        }
                        
                        Button(action: {
                            login.toggle()
                        }) {
                            Text("Sign Up")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 80, height: 44)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.orange, Color.purple]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .padding(.top,70)
            .padding(.horizontal,20)

            Spacer()

            ScrollView{
                VStack() {
                    
                    Button(action: {
                        quest.toggle()
                    }) {
                        VStack{
                            HStack {
                                Image("question")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.white)
                                    .padding()
                                    .cornerRadius(10)
                                
                                
                                Text("Quest Rooms")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.white)
                            }.padding(20)
                            Text("The most exciting quest rooms and their reviews")
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray).padding()
                        }
                        .padding()
                        
                        .background(Color("myc3"))
                        .cornerRadius(15)
                    }.padding(.top,10)
                    
                    
                    
                    
                    Button(action: {
                        book.toggle()
                    }) {
                        HStack {
                            
                            Image("appointment-02")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding()
                            
                                .cornerRadius(10)
                            
                            Text("Booking")
                                .font(.headline)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(20)
                        .background(Color("myc3"))
                        .cornerRadius(15)
                    }
                    
                    
                    
                    HStack{
                        Button(action: {
                            facts.toggle()
                        }) {
                            VStack {
                                HStack{
                                    Image("license")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .padding()
                                        .cornerRadius(10)
                                    
                                    Spacer()
                                }.frame(maxWidth: .infinity)
                                HStack{
                                    Text("Facts")
                                        .font(.title3)
                                        .foregroundColor(.white)
                                        .padding(.leading,12)
                                    
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.white)
                                }.frame(maxWidth: .infinity)
                                    .padding(.top,12)
                            }
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .padding()
                            .background(Color("myc3"))
                            .cornerRadius(15)
                        }
                        VStack{
                            Button(action: {
                                settings.toggle()
                            }) {
                                HStack {
                                    Text("Settings")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.white)
                                        .padding(.leading,50)
                                }
                                .frame(maxWidth: .infinity,maxHeight: .infinity)
                                .padding()
                                .background(Color("myc3"))
                                .cornerRadius(15)
                            }.frame(maxWidth: .infinity,maxHeight: .infinity)
                            Button(action: {
                                favorites.toggle()
                            }) {
                                HStack {
                                    
                                    Text("Favorites")
                                        .foregroundColor(.white)
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.white).padding(.leading,50)
                                }
                                .frame(maxWidth: .infinity,maxHeight: .infinity)
                                .padding()
                                .background(Color("myc3"))
                                .cornerRadius(15)
                            }.frame(maxWidth: .infinity,maxHeight: .infinity)
                        }.frame(maxWidth: .infinity,maxHeight: .infinity)
                    }
                    
                    // Quiz Button
                    Button(action: {
                        quiz.toggle()
                    }) {
                        HStack {
                            Image("quiz-04")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                                .padding()
                            
                                .cornerRadius(10)
                            
                            Text("Quiz")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                        }
                        .padding()
                        .background(Color("myc3"))
                        .cornerRadius(15)
                    }
                    
                }.padding(.horizontal,20)
            }

          
        }
        .padding(.horizontal,5)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("launch").resizable().scaledToFill())
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $login) {
            CreateAccountView()
        }
        .fullScreenCover(isPresented: $quest) {
            QuestRoomsView()
        }
        .fullScreenCover(isPresented: $favorites) {
            AllFavoritesView()
        }
        .fullScreenCover(isPresented: $facts) {
            InterestingFactsView()
        }
        .fullScreenCover(isPresented: $quiz) {
            QuizSelectionView()
        }
        .fullScreenCover(isPresented: $book) {
            BookingView()
        }
        .fullScreenCover(isPresented: $settings) {
            SettingsView()
        }
        .fullScreenCover(isPresented: $notifications) {
            NotificationsView()
        }
    }
}

#Preview {
    MyHomeView()
}
