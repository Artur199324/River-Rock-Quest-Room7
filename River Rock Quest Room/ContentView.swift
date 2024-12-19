import SwiftUI
import WebKit


struct ContentView: View {
        @State private var progress: CGFloat = 0.0
        @State private var navigateToNextScreen = false
        @State private var currentURL: URL? = nil
        @State private var showWebView = false
        let userPreferences = UserPreferences()
        @State private var initialURL: URL? = nil
        @State private var ccurrentURL: URL? = nil
        @State private var sshowWebView = false
        @State private var webView: WKWebView? = nil

        var body: some View {
            VStack {
                    Spacer()
                    
                    Image("67_chat_message_fp_13 copy 1")
                    
                    ProgressBar(progress: progress)
                        .frame(width: 200, height: 10)
                        .padding()
                        .padding(.top, 50)
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            currentURL = URL(string: "https://sites.google.com/view/river-quest-area--quiz-terms/")
                            showWebView = true
                        } label: {
                            Text("Terms of Service").foregroundColor(.white)
                        }.padding()
                        
                        Button {
                            currentURL = URL(string: "https://sites.google.com/view/river-quest-area-privacy/")
                            showWebView = true
                        } label: {
                            Text("Privacy Policy").foregroundColor(.white)
                        }.padding()
                    }
                    .padding(.bottom, 60)
                    
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
     
            .onAppear {
                startLoading()
  
            }
            .fullScreenCover(isPresented: $navigateToNextScreen) {
                if userPreferences.getLog() == 1 {
                    MyHomeView()
                } else {
                    CreateAccountView()
                }
            }
            .sheet(isPresented: $showWebView) {
                if let url = currentURL {
                    WebView(url: url)
                }
            }
        }

        private func startLoading() {
            withAnimation(.linear(duration: 3.0)) {
                progress = 1.0
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                          navigateToNextScreen = true
                      }
        }
}

#Preview {
    ContentView()
}
