import SwiftUI

struct BookingView: View {
    @Environment(\.dismiss) var dismiss
    @State var next = 1
    @State var date = ""
    @State var name = ""
    @State var email = ""
    @State var aults = ""
    @State var children = ""
    @State var guests = ""
    @State private var keyboardOffset: CGFloat = 0
    @State private var randomNumber: Int = Int.random(in: 30...60)

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

                Text("Booking")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.trailing, 60)

                Spacer()
            }
            .padding(.top, 70)

         
            ScrollViewReader { proxy in
                ScrollView {
                    VStack {
                        if next == 1 {
                            stepOne
                        } else if next == 2 {
                            stepTwo
                        } else if next == 3 {
                            stepThree
                        } else if next == 4 {
                            summaryView
                        }
                    }
                    .padding(.bottom, keyboardOffset)
                    .animation(.easeOut, value: keyboardOffset)
                }
                .onTapGesture {
                
                    hideKeyboard()
                }
            }
        }
        .onAppear {
            registerForKeyboardNotifications()
        }
        .onDisappear {
            unregisterForKeyboardNotifications()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("launch").resizable().scaledToFill())
        .ignoresSafeArea()
    }

    
    var stepOne: some View {
        VStack {
            Spacer()
            Text("Select a date")
                .foregroundColor(.white)
                .font(.title)
                .bold()
                .padding(.bottom, 10)

            Image("nex1")
                .padding(.bottom, 20)

            TextField("", text: $date)
                .padding()
                .foregroundColor(.white)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .overlay {
                    if date.isEmpty {
                        HStack {
                            Text("Enter the Date")
                                .foregroundColor(.white)
                                .padding(.leading, 40)
                            Spacer()
                        }
                    }
                }

            Button(action: { next = 2 }) {
                Text("Continue")
                    .foregroundColor(.white)
                    .bold()
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.purple]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(15)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
        .id(1)
    }

  
    var stepTwo: some View {
        VStack {
            Spacer()
            Text("Enter your details")
                .foregroundColor(.white)
                .font(.title)
                .bold()
                .padding(.bottom, 10)


            TextField("", text: $name)
                .padding()
                .foregroundColor(.white)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .overlay {
                    if name.isEmpty {
                        HStack {
                            Text("Enter your Name")
                                .foregroundColor(.white)
                                .padding(.leading, 40)
                            Spacer()
                        }
                    }
                }

            TextField("", text: $email)
                .padding()
                .foregroundColor(.white)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .overlay {
                    if email.isEmpty {
                        HStack {
                            Text("Email")
                                .foregroundColor(.white)
                                .padding(.leading, 40)
                            Spacer()
                        }
                    }
                }

            TextField("", text: $aults)
                .padding()
                .foregroundColor(.white)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .overlay {
                    if aults.isEmpty {
                        HStack {
                            Text("Adults")
                                .foregroundColor(.white)
                                .padding(.leading, 40)
                            Spacer()
                        }
                    }
                }

            TextField("", text: $children)
                .padding()
                .foregroundColor(.white)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .overlay {
                    if children.isEmpty {
                        HStack {
                            Text("Children")
                                .foregroundColor(.white)
                                .padding(.leading, 40)
                            Spacer()
                        }
                    }
                }

            Button(action: { next = 3 }) {
                Text("Continue")
                    .foregroundColor(.white)
                    .bold()
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.purple]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(15)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
        .id(2)
    }

    var stepThree: some View {
        VStack {
            Spacer()
            Text("Enter additional details")
                .foregroundColor(.white)
                .font(.title)
                .bold()
                .padding(.bottom, 10)

            Image("nex3")
                .padding(.bottom, 20)

            TextField("", text: $guests)
                .padding()
                .foregroundColor(.white)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .overlay {
                    if guests.isEmpty {
                        HStack {
                            Text("Additional Guests")
                                .foregroundColor(.white)
                                .padding(.leading, 40)
                            Spacer()
                        }
                    }
                }

            Button(action: { next = 4 }) {
                Text("Continue")
                    .foregroundColor(.white)
                    .bold()
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.purple]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(15)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
        .id(3)
    }

   
    var summaryView: some View {
        VStack {
            Spacer()
            Text("Total")
                .foregroundColor(.white)
                .font(.title2)
                .padding(.bottom, 20)

            Image("nex4")

            VStack {
                summaryRow(title: "Name", value: name)
                summaryRow(title: "Date", value: date)
                summaryRow(title: "Email", value: email)
                summaryRow(title: "Adults", value: aults)
                summaryRow(title: "Children", value: children)
                summaryRow(title: "Guests", value: guests)
                summaryRow1(title: "Booking", value: "for \(randomNumber)$")
                    .padding(.bottom, 20)
            }.frame(maxWidth: .infinity)
                .background(Color("myc"))
                .cornerRadius(10)
                .padding()
        }
    }
    
   
    func summaryRow(title: String, value: String) -> some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.leading, 20)
                .padding()
            Spacer()
            Text(value)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.trailing, 20)
                .padding()
                .bold()
        }
        .frame(maxWidth: .infinity)
        .background(Color("myc"))
        .cornerRadius(10)
        .padding(.horizontal, 10)
    }

    func summaryRow1(title: String, value: String) -> some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.leading, 20)
                .padding()
            Spacer()
            Text(value)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.trailing, 20)
                .padding()
                .bold()
        }
        .frame(maxWidth: .infinity)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.orange, Color.purple]),
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .cornerRadius(10)
        .padding(.horizontal, 10)
    }

   
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }

    private func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
            if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                self.keyboardOffset = keyboardFrame.height - 50
            }
        }

        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
            self.keyboardOffset = 0
        }
    }

    private func unregisterForKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
}

#Preview {
    BookingView()
}
