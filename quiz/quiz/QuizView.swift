//
//  QuizView.swift
//  quiz
//
//  Created by StudentAM on 4/22/24.
//

import SwiftUI

struct QuizView: View {
    struct Question {
        var question: String
        var options: [String]
        var correct: String
    }
    @State private var questions: [Question] = [
        Question(question: "How many apples fell on newton's head?", options: ["2", "1", "40", "none of the above"], correct: "none of the above"),
        Question(question: "What is max's mom's last son's name if his brothers are named a, b, and c?", options: ["d", "abc", "max", "none of the above"], correct: "max"),
        Question(question: "What did usher say?", options: ["no", "yes", "yeah", "none of the above"], correct: "yeah"),
        Question(question: "How high do bald people go when they wash their face?", options: ["2 in.", "whole head", "forehead", "none of the above"], correct: "forehead"),
        Question(question: "Why should people have kids in their late 40s?", options: ["extra chromosome for later", "financial stability", "mature", "none of the above"], correct: "extra chromosome for later"),
        Question(question: "Best fruit?", options: ["mango", "lychee", "pear", "none of the above"], correct: "lychee"),
        Question(question: "Best Person?", options: ["you", "Ishita", "ur mom", "none of the above"], correct: "Ishita"),
        Question(question: "Largest Contintent?", options: ["ur mom", "Asia", "Europe", "none of the above"], correct: "Asia"),
        Question(question: "Largest Ocean?", options: ["Pacific", "Arctic", "Balkan", "none of the above"], correct: "Pacific"),
        Question(question: "Best person for real?", options: ["Still Ishita", "Ur mom", "Hac", "none of the above"], correct: "Still Ishita")]
    @State private var index: Int = 0
    @State private var score: Int = 0
    @State private var isDelaying: Bool = false
    @State private var corr2: Bool = false
    @State private var corr1: Bool = false
    @State private var corr3: Bool = false
    @State private var corr4: Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                Image("back2") // background
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer() // space between top and title
                    Text("Score: \(score)")//separate to align new font perfectly
                        .font(.custom("Silkscreen-Bold", size: 46))
                    Spacer()//space between start button and title
                    if index < 10{
                        Text(questions[index].question)//separate to align new font perfectly
                            .font(.custom("Silkscreen-Bold", size: 35))
                            .foregroundStyle(.black)
                            .background(Color(UIColor(red:1, green:0.5 ,blue:0.5 , alpha:1.00)))
                            .cornerRadius(10)
                            .padding()
                        Spacer()//space between start button and title
                        Spacer()
                        Button(action: {
                            isDelaying = true
                            if(questions[index].options[0] == questions[index].correct){
                                    corr1.toggle()
                                    score += 1
                                }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                if(questions[index].options[0] == questions[index].correct){corr1.toggle()}
                                index += 1
                                isDelaying = false
                            }
                        }, label: {
                            Text(questions[index].options[0])
                                .font(.custom("Silkscreen-regular", size: 30))
                                .foregroundStyle(.black)
                                .background(corr1 ? Color.green:Color(UIColor(red:1, green:0.5 ,blue:0.5 , alpha:1.00)))
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            isDelaying = true
                            if(questions[index].options[1] == questions[index].correct){
                                    corr2.toggle()
                                    score += 1
                                }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                if(questions[index].options[1] == questions[index].correct){corr2.toggle()}
                                index += 1
                                isDelaying = false
                            }
                        }, label: {
                            Text(questions[index].options[1])
                                .font(.custom("Silkscreen-regular", size: 30))
                                .foregroundStyle(.black)
                                .background(corr2 ? Color.green:Color(UIColor(red:1, green:0.5 ,blue:0.5 , alpha:1.00)))
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            isDelaying = true
                            if(questions[index].options[2] == questions[index].correct){
                                    corr3.toggle()
                                    score += 1
                                }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                if(questions[index].options[2] == questions[index].correct){corr3.toggle()}
                                index += 1
                                isDelaying = false
                            }
                        }, label: {
                            Text(questions[index].options[2])
                                .font(.custom("Silkscreen-regular", size: 30))
                                .foregroundStyle(.black)
                                .background(corr3 ? Color.green:Color(UIColor(red:1, green:0.5 ,blue:0.5 , alpha:1.00)))
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            isDelaying = true
                            if(questions[index].options[3] == questions[index].correct){
                                    corr4.toggle()
                                    score += 1
                                }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                if(questions[index].options[3] == questions[index].correct){corr4.toggle()}
                                index += 1
                                isDelaying = false
                            }
                        }, label: {
                            Text(questions[index].options[3])
                                .font(.custom("Silkscreen-regular", size: 30))
                                .foregroundStyle(.black)
                                .background(corr4 ? Color.green:Color(UIColor(red:1, green:0.5 ,blue:0.5 , alpha:1.00)))
                                .cornerRadius(10)
                                .padding()
                        })
                        Spacer()
                    }else{ // game over when index over 9
                        NavigationLink(destination: WinView(scored: score)){// link to end page
                            Text("Results")//next button
                                .font(.custom("Silkscreen-Bold", size: 46))
                                .foregroundStyle(.black)
                                .background(Color(UIColor(red:1, green:0.5 ,blue:0.5 , alpha:1.00)))
                                .cornerRadius(10)
                                .padding()
                        }
                    }
                }
                if isDelaying{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.black.opacity(0.001))
                        .frame(width: 300, height: 730)
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

#Preview {
    QuizView()
}
