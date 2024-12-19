import SwiftUI
import StoreKit
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showTermsWebView = false
    @State private var showPrivacyWebView = false
    @State var login = false
    @State var favorites = false
    @State var support = false
    @State var notifications = false
    @State var profile = false

    let userPreferences = UserPreferences()

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
                
                Text("Settings")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.trailing, 50)
                
                Spacer()
            }
            .padding(.top, 70)
            
              if userPreferences.getLog() == 1{ 
                          SettingButton(title: "Profile") {
                              profile.toggle()
                          }.padding(.horizontal,20)
                          SettingButton(title: "Notifications") {
                              notifications.toggle()
                          }.padding(.horizontal,20)
                          SettingButton(title: "Favorites") {
                              favorites.toggle()
                          }.padding(.horizontal,20)
                          SettingButton(title: "Support") {
                              support.toggle()
                          }.padding(.horizontal,20)
               

            } else {
                VStack {
                    Text("Sign in or create a new account to edit your profile and receive notifications")
                        .foregroundColor(.white)
                        .padding()
                    HStack {
                        
                        Button(action: {
                            login.toggle()
                        }) {
                            Text("Log In")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 100, height: 44)
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
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 100, height: 44)
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
                    .padding()
                }
                .frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.bottom, 10)
                .padding()
            }
            
            Spacer()
            
            SettingButton(title: "Rate Apps") {
                if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                    AppStore.requestReview(in: scene)
                }
            }.padding(.horizontal,20)
            SettingButton(title: "Notifications") {
                notifications.toggle()
            }.padding(.horizontal,20)
            SettingButton(title: "Favorites") {
                favorites.toggle()
            }.padding(.horizontal,20)
           
            SettingButton(title: "Terms of Service") {
                showTermsWebView = true
            }.padding(.horizontal,20)
                .sheet(isPresented: $showTermsWebView) {
                    WebView(url: URL(string: "https://sites.google.com/view/river-quest-area--quiz-terms/")!)
                }
           
            
            SettingButton(title: "Privacy Policy") {
                showPrivacyWebView = true
            }.padding(.horizontal,20)
                .sheet(isPresented: $showPrivacyWebView) {
                    WebView(url: URL(string: "https://sites.google.com/view/river-quest-area-privacy/")!)
                }.padding(.bottom, 30)
            
          
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("launch").resizable().scaledToFill())
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $login) {
            CreateAccountView()
        }
        .fullScreenCover(isPresented: $favorites) {
            AllFavoritesView()
        }
        .fullScreenCover(isPresented: $support) {
            SupportView()
        }
        .fullScreenCover(isPresented: $notifications) {
            NotificationsView()
        }
        .fullScreenCover(isPresented: $profile) {
            ProfileIView()
        }
    }
}

#Preview {
    SettingsView()
}
