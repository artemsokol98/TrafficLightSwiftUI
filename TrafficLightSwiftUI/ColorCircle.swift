//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Артем Соколовский on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding()
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.5)
    }
}
