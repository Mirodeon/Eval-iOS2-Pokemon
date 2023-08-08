//
//  NavigationController.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .customDarkGray()
        
        appearance.titleTextAttributes = [.foregroundColor: UIColor.customYellow()]
        
        navigationBar.compactAppearance = appearance
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        
        navigationBar.tintColor = UIColor.customYellow()
    }
}

