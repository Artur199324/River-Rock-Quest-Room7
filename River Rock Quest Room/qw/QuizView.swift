

import SwiftUI

struct QuizView: View {
    let quizNumber: Int
      @Environment(\.dismiss) var dismiss
      @State private var currentQuestionIndex = 0
      @State private var selectedAnswer: Int? = nil
      @State private var showNextQuestion = false
      @State private var score = 0
    let questions = [
        1: [
            Question(text: "Which escape room involves escaping from a sinking submarine before oxygen runs out?", options: ["The Haunted Manor", "Submarine SOS", "Outer Space Rescue", "Carnival of Chaos"], correctAnswer: 1),
            Question(text: "Who is the main antagonist in 'The Wizard's Keep'?", options: ["The Wise Sage", "The Apprentice", "The Dark Sorcerer", "The Mastermind"], correctAnswer: 2),
            Question(text: "In which escape room do players face the challenge of avoiding zombies?", options: ["Wonderland Adventures", "Zombie Apocalypse", "Spy Mission: Omega Protocol", "The Pharaoh's Tomb"], correctAnswer: 1),
            Question(text: "What artifact must be stolen in 'The Heist'?", options: ["The Amulet of Power", "The Eye of Eternity", "The Crystal of Time", "The Ancient Crown"], correctAnswer: 1),
            Question(text: "Which escape room is inspired by Lewis Carroll's famous story?", options: ["The Haunted Manor", "Wonderland Adventures", "Spy Mission: Omega Protocol", "Carnival of Chaos"], correctAnswer: 1),
            Question(text: "Who is the character that provides cryptic hints in 'The Wizard's Keep'?", options: ["The Apprentice", "The Dark Sorcerer", "The Wise Sage", "The Ringmaster"], correctAnswer: 2),
            Question(text: "What is the name of the saboteur character in 'Submarine SOS'?", options: ["The Engineer", "The Captain", "The Hacker", "The Saboteur"], correctAnswer: 3),
            Question(text: "Which escape room features circular mazes and biometric scanners?", options: ["The Haunted Manor", "Spy Mission: Omega Protocol", "Outer Space Rescue", "Zombie Apocalypse"], correctAnswer: 1),
            Question(text: "What is the role of The Ringmaster in 'Carnival of Chaos'?", options: ["A guide helping players escape", "The leader of the twisted carnival", "A character providing hints", "The antagonist in the final puzzle"], correctAnswer: 0),
            Question(text: "In 'Outer Space Rescue,' who provides assistance to the players during their mission?", options: ["The Alien", "The Rogue Pilot", "The AI Navigator", "The Captain"], correctAnswer: 2)
        ],
        2: [
            Question(text: "What is the main challenge in 'Carnival of Chaos'?", options: ["Escaping a haunted house", "Defeating the Ringmaster", "Stealing an artifact", "Solving submarine repairs"], correctAnswer: 1),
            Question(text: "Which escape room is inspired by Egyptian mythology?", options: ["The Pharaoh's Tomb", "Wonderland Adventures", "Submarine SOS", "The Wizard's Keep"], correctAnswer: 0),
            Question(text: "What is the role of The Fortune Teller in 'Carnival of Chaos'?", options: ["A guide for solving puzzles", "The main villain", "A character who sets traps", "An ally to The Ringmaster"], correctAnswer: 0),
            Question(text: "In 'The Heist,' what skill is most crucial?", options: ["Bravery", "Problem-solving", "Physical strength", "Luck"], correctAnswer: 1),
            Question(text: "Which room includes puzzles involving enchanted doors and ancient spells?", options: ["Spy Mission: Omega Protocol", "The Wizard's Keep", "Outer Space Rescue", "Submarine SOS"], correctAnswer: 1),
            Question(text: "What is the name of the zombie leader in 'Zombie Apocalypse'?", options: ["The Rogue Pilot", "The Test Subject", "The Alpha Zombie", "The Dark Sorcerer"], correctAnswer: 2),
            Question(text: "Which escape room focuses on deep-sea exploration?", options: ["Submarine SOS", "Outer Space Rescue", "The Haunted Manor", "The Wizard's Keep"], correctAnswer: 0),
            Question(text: "Who is the main villain in 'Spy Mission: Omega Protocol'?", options: ["The Double Agent", "The AI Navigator", "The Saboteur", "The Ringmaster"], correctAnswer: 0),
            Question(text: "What is the final challenge in 'Wonderland Adventures'?", options: ["Defeating the Queen of Hearts", "Escaping a laser maze", "Disabling a bomb", "Escaping a sinking submarine"], correctAnswer: 0),
            Question(text: "Which room is best for sci-fi lovers?", options: ["The Wizard's Keep", "Outer Space Rescue", "Carnival of Chaos", "The Pharaoh's Tomb"], correctAnswer: 1)
        ],
        3: [
            Question(text: "What must players recover in 'The Heist'?", options: ["A magical wand", "The Eye of Eternity", "A treasure map", "A mystical book"], correctAnswer: 1),
            Question(text: "Which escape room features the character of 'The Saboteur'?", options: ["Submarine SOS", "Spy Mission: Omega Protocol", "Zombie Apocalypse", "Wonderland Adventures"], correctAnswer: 0),
            Question(text: "Which escape room is set in an extraterrestrial-themed facility?", options: ["The Haunted Manor", "The Wizard's Keep", "Outer Space Rescue", "Carnival of Chaos"], correctAnswer: 2),
            Question(text: "Who is the key ally in 'Outer Space Rescue'?", options: ["The Alien", "The AI Navigator", "The Engineer", "The Fortune Teller"], correctAnswer: 1),
            Question(text: "Which escape room is described as whimsical and family-friendly?", options: ["Carnival of Chaos", "Wonderland Adventures", "The Haunted Manor", "The Wizard's Keep"], correctAnswer: 1),
            Question(text: "What makes 'Spy Mission: Omega Protocol' unique?", options: ["It’s set in a haunted house", "It includes laser mazes and biometric scanners", "It has magical creatures", "It takes place underwater"], correctAnswer: 1),
            Question(text: "What is the main challenge in 'Zombie Apocalypse'?", options: ["Solving ancient riddles", "Escaping zombies and finding the antidote", "Piloting a spaceship", "Disabling security systems"], correctAnswer: 1),
            Question(text: "Which escape room is inspired by classic fantasy?", options: ["The Haunted Manor", "The Wizard's Keep", "Submarine SOS", "Carnival of Chaos"], correctAnswer: 1),
            Question(text: "What is the Queen of Hearts known for in 'Wonderland Adventures'?", options: ["Her riddles", "Her temper and challenges", "Her magical powers", "Her role as a guide"], correctAnswer: 1),
            Question(text: "What must players repair in 'Submarine SOS'?", options: ["A spaceship", "A magical artifact", "A sinking submarine", "A laboratory"], correctAnswer: 2)
        ],
        4: [
            Question(text: "Who provides cryptic hints in 'The Wizard's Keep'?", options: ["The Apprentice", "The Wise Sage", "The Dark Sorcerer", "The AI Navigator"], correctAnswer: 1),
            Question(text: "Which escape room features the Alpha Zombie?", options: ["Zombie Apocalypse", "Carnival of Chaos", "The Heist", "Submarine SOS"], correctAnswer: 0),
            Question(text: "In 'The Pharaoh's Tomb,' what is the ultimate goal?", options: ["Escape with a treasure", "Defeat the Ringmaster", "Solve a murder mystery", "Disable a bomb"], correctAnswer: 0),
            Question(text: "Which character adds comic relief in 'The Wizard's Keep'?", options: ["The Apprentice", "The Ringmaster", "The AI Navigator", "The Hacker"], correctAnswer: 0),
            Question(text: "What is the main storyline in 'Outer Space Rescue'?", options: ["Disarming a bomb", "Repairing a spaceship and returning to Earth", "Solving enchanted riddles", "Avoiding zombie attacks"], correctAnswer: 1),
            Question(text: "What makes 'Carnival of Chaos' unsettling?", options: ["Magical creatures", "Creepy clowns and eerie games", "Haunted ghosts", "A time limit of 45 minutes"], correctAnswer: 1),
            Question(text: "Which escape room features underwater themes?", options: ["Submarine SOS", "The Haunted Manor", "Zombie Apocalypse", "The Heist"], correctAnswer: 0),
            Question(text: "Who is the main character in 'Spy Mission: Omega Protocol'?", options: ["The Hacker", "Agent X", "The Saboteur", "Outer Space Rescue"], correctAnswer: 1),
            Question(text: "What type of puzzles are in 'The Wizard's Keep'?", options: ["Magical spells and enchanted doors", "Laser mazes", "Security bypass challenges", "The antagonist in the final puzzle"], correctAnswer: 0),
            Question(text: "Which escape room is recommended for families?", options: ["Wonderland Adventures", "Zombie Apocalypse", "Spy Mission: Omega Protocol", "The Heist"], correctAnswer: 0)
        ]
      ]
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
                Text("Qusetion \(currentQuestionIndex) of 10")
                    .foregroundColor(Color("myc2"))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                
                if let quizQuestions = questions[quizNumber] {
                    if currentQuestionIndex < quizQuestions.count {
                        let question = quizQuestions[currentQuestionIndex]
                        HStack {
                        Text(question.text)
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding()
                            .multilineTextAlignment(.center)
                        
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.bottom,100)
                                 
                        ForEach(0..<question.options.count, id: \.self) { index in
                            Button(action: {
                                selectedAnswer = index
                                if index == question.correctAnswer {
                                    score += 1
                                }
                                showNextQuestion = true
                            }) {
                                HStack {
                                    Text(question.options[index])
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.white)
                                    Spacer()
                                    Image("Vector 1")
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(index == selectedAnswer ? Color("myc2") : Color("myc"))
                                .cornerRadius(10)
                                .padding(.horizontal)
                              
                                
                            }
                        }
                    } else {
                        HStack {
                        Text("Total")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding()
                            .multilineTextAlignment(.center)
                        
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.bottom,100)
                        
                        HStack {
                            Text("Correct Answers")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                            Spacer()
                            Text("\(score)")
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("myc2"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        
                        HStack {
                            Text("Incorrect Answers")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                            Spacer()
                            Text("\(10 - score)")
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("myc"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                     
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("launch").resizable().scaledToFill())
            .ignoresSafeArea()
            .onChange(of: showNextQuestion) { _ in
                       if showNextQuestion {
                           currentQuestionIndex += 1
                           selectedAnswer = nil
                           showNextQuestion = false
                       }
                   }
    }
}

#Preview {
    QuizView(quizNumber: 1)
}

struct Question {
    let text: String
    let options: [String]
    let correctAnswer: Int
}
