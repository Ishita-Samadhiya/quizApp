//
//  WinView.swift
//  quiz
//
//  Created by StudentAM on 4/23/24.
//

import SwiftUI

struct WinView: View {
    @State var scored: Int
    var body: some View {
        NavigationView{
            ZStack{
                Image("back") // background
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer() // space between top and title
                    Text("You scored")
                        .font(.custom("Silkscreen-Bold", size: 46))
                    Text("\(scored)/10!")//separate to align new font perfectly
                        .font(.custom("Silkscreen-Bold", size: 46))
                    Spacer()//space between start button and title
                    Spacer()//space between start button and title
                    NavigationLink(destination: QuizView()){ // start button styling to link to game page
                        Text("Restart")
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
    WinView(scored: 6)
}
