//
//  TrafficLightSwiftUIApp.swift
//  TrafficLightSwiftUI
//
//  Created by Артем Соколовский on 01.06.2021.
//

import SwiftUI

@main
struct TrafficLightSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(opacityRed: 0.3, opacityYellow: 0.3, opacityGreen: 0.3)
        }
    }
}
