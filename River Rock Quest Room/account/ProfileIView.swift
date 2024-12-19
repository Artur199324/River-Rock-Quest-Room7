

import SwiftUI

struct ProfileIView: View {
    @Environment(\.dismiss) var dismiss
    @State var book = false
    @State var login = false
    @State var notifications = false
    @State var support = false
    let userPreferences = UserPreferences()
    var currentDate: String {
         let formatter = DateFormatter()
         formatter.dateFormat = "MMM d, EEE"
         return formatter.string(from: Date())
     }
    @State var favorites = false
    var body: some View {
        VStack{
            ScrollView{
                HStack {
                    Button {
                        self.dismiss()
                    } label: {
                        Image("Frame 15")
                    }
                    .padding(.leading, 30)
                    
                    Spacer()
                    
                    Text("Profile")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.trailing, 50)
                    
                    Spacer()
                }
                .padding(.top, 70)
                
                VStack {
                    switch userPreferences.getGender() {
                    case 1:
                        Image("de1").padding()
                        
                    case 2:
                        Image("de2").padding()
                    default:
                        Image("de1")
                            .padding()
                    }
                    VStack(spacing: 4) {
                        Text(userPreferences.getUsername() ?? "Guest")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title)
                            .padding(.bottom, 2)
                            .multilineTextAlignment(.leading)
                        
                        Text(currentDate)
                            .foregroundColor(.gray)
                            .font(.title3)
                            .padding(.bottom,20)
                    }
                    
                    HStack{
                        Button {
                            notifications.toggle()
                        } label: {
                          
                                    VStack{
                                        HStack{
                                            Image("notification-02 1").padding(.leading,20)
                                            Spacer()
                                            Text("0 updates")
                                                .foregroundColor(Color("mycc")).padding(.trailing,20)
                                        }   .padding(.top,20)
                                        HStack{
                                            Text("Notifications")
                                                .foregroundColor(.white)
                                                .padding()
                                                .bold()
                                                .padding(.leading,10)
                                            Spacer()
                                        }
                                    }
                                
                        } .background(Color("myc"))
                            .cornerRadius(10)
                            .padding(.leading,10)
                            .padding(.trailing,5)
                        Button {
                            favorites.toggle()
                        } label: {
                           
                                    VStack{
                                        HStack{
                                            Image("favourite 1").padding(.leading,20)
                                            Spacer()
                                            Text("\(userPreferences.getItemsCount()) updates")
                                                .foregroundColor(Color("mycc3"))
                                                .padding(.trailing,20)
                                        }  .padding(.top,20)
                                        
                                        HStack{
                                            Text("Favorites")
                                                .foregroundColor(.white)
                                                .padding()
                                                .bold()
                                                .padding(.leading,10)
                                            Spacer()
                                        }
                                    }
                                
                        }.background(Color("myc"))
                            .cornerRadius(10)
                            .padding(.trailing,10)
                            .padding(.leading,5)
                        
                    }
                    
                    HStack{
                        Button {
                            support.toggle()
                        } label: {
                            VStack{
                                HStack{
                                    Image("Group 7").padding(.leading,20)
                                    Spacer()
                                    
                                }  .padding(.top,20)
                                
                                HStack{
                                    Text("Support")
                                        .foregroundColor(.white)
                                        .padding()
                                        .bold()
                                        .padding(.leading,2)
                                    Spacer()
                                }
                            }
                        }.background(Color("myc"))
                            .cornerRadius(10)
                            .padding(.trailing,5)
                            .padding(.leading,10)
                        
                        Button {
                            book.toggle()
                        } label: {
                            VStack{
                                HStack{
                                    Image("Group 7").padding(.leading,20)
                                    Spacer()
                                    
                                }  .padding(.top,20)
                                
                                HStack{
                                    Text("Booking")
                                        .foregroundColor(.white)
                                        .padding()
                                        .bold()
                                        .padding(.leading,2)
                                    Spacer()
                                }
                            }
                        }.background(Color("myc"))
                            .cornerRadius(10)
                            .padding(.trailing,10)
                            .padding(.leading,5)
                            
                        
                        
                    }.padding(.bottom,20)
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.bottom, 10)
                .padding()
                Spacer()
                HStack{
                    
                    Button(action: {
                        login.toggle()
                        userPreferences.saveLog(0)
                    }) {
                        Text("Log In")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 160, height: 44)
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
                        userPreferences.saveLog(0)
                        userPreferences.clearCredentials()
                    }) {
                        Text("Delete Account")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 160, height: 44)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.purple]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(10)
                    }

                
                    
                }.padding(.bottom,20)
            }
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $favorites) {
                AllFavoritesView()
            }
            .fullScreenCover(isPresented: $book) {
                BookingView()
            }
            .fullScreenCover(isPresented: $login) {
                CreateAccountView()
            }
            .fullScreenCover(isPresented: $notifications) {
                NotificationsView()
            }
            .fullScreenCover(isPresented: $support) {
                SupportView()
            }
    }
}

#Preview {
    ProfileIView()
}
