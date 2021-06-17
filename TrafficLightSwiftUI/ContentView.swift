//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Артем Соколовский on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var text = "Start"
    
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    
    private func changeColor() {
        opacityRed = 0.3
        opacityYellow = 0.3
        opacityGreen = 0.3
        tapCount += 1
        
        switch tapCount {
        case 1: opacityRed = 1.0
        case 2: opacityYellow = 1.0
        default: opacityGreen = 1.0
                tapCount = 0
        }
        
        text = "Next"
    }
    
    var body: some View {
        VStack {
            
            ColorCircle(color: .red, opacity: opacityRed)
            ColorCircle(color: .yellow, opacity: opacityYellow)
            ColorCircle(color: .green, opacity: opacityGreen)
            
            Spacer()
            
            ButtonRectangle(text: text, action: changeColor)
            .frame(width: 200, height: 80, alignment: .bottom)
        }.padding(.bottom)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
