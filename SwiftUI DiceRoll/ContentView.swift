//
//  ContentView.swift
//  DiceRollSwiftUI
//
//  Created by Steve Kerney on 5/12/20.
//  Copyright © 2020 Steve Kerney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("logo")
                Spacer()
                HStack {
                    DiceView(imageIndex: "1")
                    DiceView(imageIndex: "2")
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {

                }) {
                    Text("ROLL!")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.red)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let imageIndex: String

    var body: some View {
        Image("dice\(imageIndex)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
