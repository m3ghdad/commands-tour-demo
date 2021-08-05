//
//  PageView.swift
//  commands-tour-demo
//
//  Created by Meghdad Abbaszadegan on 8/4/21.
//

import SwiftUI

struct PageView<Page:View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(cards.map {OnboardingCardView(card: $0)})
    }
}
