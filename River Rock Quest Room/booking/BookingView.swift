

import SwiftUI

struct BookingView: View {
    @Environment(\.dismiss) var dismiss
    @State  var next = 1
    @State  var date = ""
    @State  var name = ""
    @State  var email = ""
    @State  var aults = ""
    @State  var children = ""
    @State  var guests = ""
    @State private var randomNumber: Int = Int.random(in: 30...60)
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
                
                Text("Booking")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.trailing, 60)
                
                Spacer()
            }
            .padding(.top, 70)
            if next == 1{
                Text("Select a date")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding(.top, 30)
                
                Image("nex1")
                    .padding(.top, 30)
                Spacer()
                TextField("", text: $date)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .padding(.top)
                    .overlay {
                        if date.isEmpty{
                            HStack{
                                
                                Text("Enter the Date").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                Button(action: {
                    next = 2
                     }) {
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
              

            }
            if next == 2{
                Text("Enter your details")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding(.top, 30)
                
                Image("nex2")
                    .padding(.top, 30)
                Spacer()
                TextField("", text: $name)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .padding(.top)
                    .overlay {
                        if name.isEmpty{
                            HStack{
                                
                                Text("Enter your Name").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                TextField("", text: $email)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .overlay {
                        if email.isEmpty{
                            HStack{
                                
                                Text("Email").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                
                TextField("", text: $aults)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .overlay {
                        if aults.isEmpty{
                            HStack{
                                
                                Text("Adults").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                
                TextField("", text: $children)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .overlay {
                        if children.isEmpty{
                            HStack{
                                Text("Children").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                Button(action: {
                    next = 3
                     }) {
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
            
            }
            
            
            if next == 3 {
                
                Text("Enter your details")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding(.top, 30)
                
                Image("nex3")
                    .padding(.top, 30)
                Spacer()
         
                TextField("", text: $email)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .overlay {
                        if email.isEmpty{
                            HStack{
                                
                                Text("Email").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                
                TextField("", text: $guests)
                    .padding()
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .padding(.top)
                    .overlay {
                        if guests.isEmpty{
                            HStack{
                                
                                Text("Additional Guests").foregroundColor(.white)
                                    .padding(.top,10)
                                    .padding(.leading,40)
                                Spacer()
                            }
                        }
                        
                    }
                Button(action: {
                    randomNumber = Int.random(in: 30...60)
                    next = 4
                     }) {
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
               
            }
            
            if next == 4 {
                
                VStack{
                    Text("Total")
                        .foregroundColor(.white)
                        .font(.title2)
                    Image("nex4")
                    
                    
                    HStack{
                        Text("Name")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.leading,20)
                            .padding()
                        Spacer()
                        Text("\(name)")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.trailing,20)
                            .padding()
                            .bold()
                    }.frame(maxWidth: .infinity)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                        
                    HStack{
                        Text("Date")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.leading,20)
                            .padding()
                        Spacer()
                        Text("\(date)")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.trailing,20)
                            .padding()
                            .bold()
                    }.frame(maxWidth: .infinity)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                        
                    
                    HStack{
                        Text("Email")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.leading,20)
                            .padding()
                        Spacer()
                        Text("\(email)")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.trailing,20)
                            .padding()
                            .bold()
                    }.frame(maxWidth: .infinity)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                    
                    
                    HStack{
                        Text("Adults")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.leading,20)
                            .padding()
                        Spacer()
                        Text("\(aults)")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.trailing,20)
                            .padding()
                            .bold()
                    }.frame(maxWidth: .infinity)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                    
                    
                    
                    HStack{
                        Text("Children")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.leading,20)
                            .padding()
                        Spacer()
                        Text("\(children)")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.trailing,20)
                            .padding()
                            .bold()
                    }.frame(maxWidth: .infinity)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                    
                    
                    
                    HStack{
                        Text("Additional Guests")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.leading,20)
                            .padding()
                        Spacer()
                        Text("\(guests)")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.trailing,20)
                            .padding()
                            .bold()
                    }.frame(maxWidth: .infinity)
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                    
                       
                    HStack{
                        Text("Booking")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.leading,20)
                            .padding()
                        Spacer()
                        Text("for \(randomNumber)$")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.trailing,20)
                            .padding()
                            .bold()
                    }.frame(maxWidth: .infinity)
                    
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.orange, Color.purple]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(15)
                        .padding(.horizontal,20)
                        .padding(.bottom,10)
                    
                    
                }.frame(maxWidth: .infinity)
                    .background(Color("myc"))
                    .cornerRadius(10)
                    .padding()
                
            }
            Spacer()
               
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
    }
}

#Preview {
    BookingView()
}
