import SwiftUI

struct QuizSelectionView: View {
    @Environment(\.dismiss) var dismiss
    @State var quiz1 = false
    @State var quiz2 = false
    @State var quiz3 = false
    @State var quiz4 = false
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
                
                Text("Quiz")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.trailing, 60)
                
                Spacer()
            }
            .padding(.top, 70)
            ScrollView{
                QuizButton(title: "Quiz 1", difficulty: "Low", backgroundColor: Color("mycc")) {
                    quiz1.toggle()
                         }.padding(.horizontal,10)
                         QuizButton(title: "Quiz 2", difficulty: "Normal", backgroundColor:  Color("mc1")) {
                             quiz2.toggle()
                         }.padding(.horizontal,10)
                         QuizButton(title: "Quiz 3", difficulty: "Hard", backgroundColor:  Color("mc2")) {
                             quiz3.toggle()
                         }.padding(.horizontal,10)
                         QuizButton(title: "Quiz 4", difficulty: "Very Hard", backgroundColor:  Color("mc3")) {
                             quiz4.toggle()
                         }.padding(.horizontal,10)
          

            }.padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $quiz1) {
                QuizView(quizNumber: 1)
            }
            .fullScreenCover(isPresented: $quiz2) {
                QuizView(quizNumber: 2)
            }
            .fullScreenCover(isPresented: $quiz3) {
                QuizView(quizNumber: 3)
            }
            .fullScreenCover(isPresented: $quiz4) {
                QuizView(quizNumber: 4)
            }
    }
}

#Preview {
    QuizSelectionView()
}
