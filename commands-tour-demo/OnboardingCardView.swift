//
//  OnboardingCardView.swift
//  commands-tour-demo
//
//  Created by Meghdad Abbaszadegan on 8/4/21.
//

import SwiftUI

struct OnboardingCardView: View {
    var card:OnboardingCard
    var body: some View {
        VStack {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(alignment: .center)
                
            VStack{
                
                Text(card.title)
                    .font(.title2)
                    .padding([.top, .bottom])
                Text(card.description)
                    .fontWeight(.light)
                    .lineLimit(5)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.primary)
            }
            .padding(40)
        }
        .padding()
        
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(card: cards[0])
    }
}
