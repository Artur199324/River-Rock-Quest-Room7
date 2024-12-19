import SwiftUI
import AVFoundation

struct SupportView: View {

        @Environment(\.dismiss) var dismiss
        @State private var email: String = ""
        @State private var message: String = ""
        @State private var selectedImage: UIImage?
        @State private var showingAlert = false
        @State private var showingImagePicker = false
        @State private var isCamera = false
        @State private var imageUploadedAlert = false
        @State private var showingActionSheet = false
        
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

                    Text("Support")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.trailing, 50)

                    Spacer()
                }
                .padding(.top, 70)

                Text("Send us your appeal and we will respond at the earliest opportunity")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.2))
                    .cornerRadius(10)

                Button {
                    showingActionSheet = true
                } label: {
                    VStack {
                        Image("image-add-02")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                        Text("Add File or Image")
                            .foregroundColor(.white)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, minHeight: 100)
                    .background(Color.orange)
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                .actionSheet(isPresented: $showingActionSheet) {
                    ActionSheet(title: Text("Choose Image Source"), buttons: [
                        .default(Text("Camera")) {
                            isCamera = true
                            checkCameraPermission()
                        },
                        .default(Text("Photo Library")) {
                            isCamera = false
                            showingImagePicker = true
                        },
                        .cancel()
                    ])
                }
                .alert(isPresented: $imageUploadedAlert) {
                    Alert(title: Text("Image Uploaded"), message: Text("Your image has been successfully uploaded."), dismissButton: .default(Text("OK")))
                }

                TextField("", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .overlay {
                        if email.isEmpty {
                            HStack {
                                Text("Email").foregroundColor(.white)
                                    .padding(.top, 10)
                                    .padding(.leading, 40)
                                Spacer()
                            }
                        }
                    }

                TextField("", text: $message)
                    .padding()
                    .frame(minHeight: 150)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .overlay {
                        if message.isEmpty {
                            HStack {
                                Text("Message").foregroundColor(.white)
                                    .padding(.top, 10)
                                    .padding(.leading, 40)
                                Spacer()
                            }
                        }
                    }

                Spacer()

                Button {
                    showingAlert = true
                } label: {
                    Text("Send Message")
                        .foregroundColor(.white)
                        .bold()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.orange, Color.purple]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Message Sent"), message: Text("Thank you for your appeal!"), dismissButton: .default(Text("OK")))
                }
                .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .sheet(isPresented: $showingImagePicker, onDismiss: {
                imageUploadedAlert = selectedImage != nil
            }) {
                ImagePicker(image: $selectedImage, isCamera: isCamera)
            }
        }
        
        private func checkCameraPermission() {
            switch AVCaptureDevice.authorizationStatus(for: .video) {
            case .authorized:
                showingImagePicker = true
            case .notDetermined:
                AVCaptureDevice.requestAccess(for: .video) { granted in
                    if granted {
                        DispatchQueue.main.async {
                            showingImagePicker = true
                        }
                    }
                }
            case .denied, .restricted:
                break
            @unknown default:
                break
            }
        }
    }

#Preview {
    SupportView()
}
