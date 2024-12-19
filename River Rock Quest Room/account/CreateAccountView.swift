
import SwiftUI

struct CreateAccountView: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var CreateUsername = ""
    @State private var CreatePassword = ""
    @State private var creatLog = true
    @State private var loog = false
    @State private var showAlert = false
    @State private var showAlert2 = false
    @State private var accountFeme = false
    @State private var welcom = false
    
    let userPreferences = UserPreferences()
    var body: some View {
        VStack{
            if creatLog {
                Text("Create Account").foregroundColor(.white).bold().padding(.top,80)
                Text("Create an account to fully utilize the app and receive notifications").foregroundColor(.white).bold().font(.title2).padding(.top,20)
                
                TextField("", text: $Username)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .padding(.top)
                    .overlay {
                        if Username.isEmpty{
                            HStack{
                                
                                Text("Enter Username").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                
                SecureField("", text: $Password)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .padding(.top)
                    .overlay {
                        if Password.isEmpty{
                            HStack{
                                
                                Text("Enter Password").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                
                Button {
                    if Username.isEmpty || Password.isEmpty{
                        showAlert.toggle()
                        
                    }else{
                        userPreferences.saveCredentials(username: Username, password: Password)
                        accountFeme.toggle()
                    }
                } label: {
                    Text("Create Account")
                                   .foregroundColor(.white)
                                   .font(.system(size: 20, weight: .bold))
                                   .frame(maxWidth: .infinity, minHeight: 70)
                                   .background(
                                       LinearGradient(
                                           gradient: Gradient(colors: [Color.orange, Color.purple]),
                                           startPoint: .leading,
                                           endPoint: .trailing
                                       )
                                   )
                                   .cornerRadius(20)
                }.padding()
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Error"),
                            message: Text("Please fill in all fields."),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                
                HStack{
                    Text("Already have an account?").foregroundColor(.white)
                    Button {
                        creatLog.toggle()
                    } label: {
                        Text(creatLog ? "Sign in" : "Sign Up").foregroundColor(Color("mycc"))
                    }
                    
                }.padding()
            }else{
                Text("Log in to your account").foregroundColor(.white).bold().padding(.top,80)
                Text("Enter the details below and log in to your previously created account").foregroundColor(.white).bold().font(.title2).padding(.top,20)
                
                TextField("", text: $CreateUsername)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .padding(.top)
                    .overlay {
                        if CreateUsername.isEmpty{
                            HStack{
                                
                                Text("Enter Username").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                
                SecureField("", text: $CreatePassword)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .padding(.top)
                    .overlay {
                        if CreatePassword.isEmpty{
                            HStack{
                                
                                Text("Enter Password").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                
                Button {
                       let savedUsername = userPreferences.getUsername()
                       let savedPassword = userPreferences.getPassword()
                    if savedUsername == CreateUsername || savedPassword == CreatePassword {
                        loog.toggle()
                        userPreferences.saveLog(1)
                    }else{
                        showAlert2.toggle()
                    }
                } label: {
                    Text("Log in")
                                   .foregroundColor(.white)
                                   .font(.system(size: 20, weight: .bold))
                                   .frame(maxWidth: .infinity, minHeight: 70)
                                   .background(
                                       LinearGradient(
                                           gradient: Gradient(colors: [Color.orange, Color.purple]),
                                           startPoint: .leading,
                                           endPoint: .trailing
                                       )
                                   )
                                   .cornerRadius(20)
                }.padding()
                    .alert(isPresented: $showAlert2) {
                        Alert(
                            title: Text("Error"),
                            message: Text("Incorrect login or password"),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                
                HStack{
                    Text("Still no account?").foregroundColor(.white)
                    Button {
                        creatLog.toggle()
                    } label: {
                        Text(creatLog ? "Sign in" : "Sign Up").foregroundColor(Color("mycc"))
                    }
                    
                }.padding()
            }
            Spacer()
            Button {
                welcom.toggle()
                userPreferences.saveLog(0)
            } label: {
                Text("Stay as Guest")
                             .foregroundColor(.white)
                             .font(.system(size: 18, weight: .bold))
                             .frame(maxWidth: .infinity, minHeight: 50)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 15)
                                     .stroke(
                                         LinearGradient(
                                             gradient: Gradient(colors: [Color.orange, Color.pink]),
                                             startPoint: .leading,
                                             endPoint: .trailing
                                         ),
                                         lineWidth: 2
                                     )
                             ).padding(.horizontal,20)
            }.padding(.bottom,40)
                
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $accountFeme) {
                AccountFemeView()
            }
            .fullScreenCover(isPresented: $welcom) {
                WelcomeView()
            }
            .fullScreenCover(isPresented: $loog) {
                RiverRockQuestRoomsView()
            }
    }
}

#Preview {
    CreateAccountView()
}
