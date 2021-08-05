//
//  PageViewController.swift
//  commands-tour-demo
//
//  Created by Meghdad Abbaszadegan on 8/4/21.
//

import SwiftUI

struct PageViewController: UIViewControllerRepresentable {
    
    var controllers:[UIViewController]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers([controllers[0]], direction: .forward, animated: true)
    }
    
}

