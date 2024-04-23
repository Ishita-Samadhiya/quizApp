//
//  ContentView.swift
//  quiz
//
//  Created by StudentAM on 4/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("back") // background
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer() // space between top and title
                    Text("Quiz Time!")//separate to align new font perfectly
                        .font(.custom("Silkscreen-Bold", size: 46))
                    Spacer()//space between start button and title
                    Spacer()//space between start button and title
                    NavigationLink(destination: QuizView()){ // start button styling to link to game page
                        Text("Start")
                            .font(.custom("Silkscreen-Bold", size: 46))
                            .foregroundStyle(.black)
                            .background(Color(UIColor(red:1, green:0.5 ,blue:0.5 , alpha:1.00)))
                            .cornerRadius(10)
                            .padding()
                    }
                    Spacer()//space between bottom and start button
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
