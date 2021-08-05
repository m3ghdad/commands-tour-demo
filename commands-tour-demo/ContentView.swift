//
//  ContentView.swift
//  commands-tour-demo
//
//  Created by Meghdad Abbaszadegan on 8/4/21.
//

import SwiftUI


var cards: [OnboardingCard] = [
    OnboardingCard(image: "charging-session", title: "Maximize savings.", description: "Learn how much each charging session costs and how you can save money in the future."),
    OnboardingCard(image: "optimal-charging-time", title: "Discover the optimal charging time.", description: "Save money by charging your car when rates are cheapest."),
    OnboardingCard(image: "efficiency", title: "Discover the optimal charging time.", description: "Get a clear idea of your driving habits and compare them to other Tesla drivers.")
    
    
    
]

struct ContentView: View {
    var body: some View {
        PageView(cards.map {OnboardingCardView(card: $0)} )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
