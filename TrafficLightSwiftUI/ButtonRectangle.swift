//
//  ButtonRectangle.swift
//  TrafficLightSwiftUI
//
//  Created by Артем Соколовский on 01.06.2021.
//

import SwiftUI

struct ButtonRectangle: View {
    let text: String
    
    var body: some View {
        Text("\(text)")
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.blue)
                .frame(width: 200, height: 80)
            )
            .frame(width: 200, height: 80)
            .overlay(RoundedRectangle(cornerRadius: 25, style: .continuous).stroke(Color.white, lineWidth: 4))
        
    }
}

struct ButtonRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRectangle(text: "hello")
    }
}
