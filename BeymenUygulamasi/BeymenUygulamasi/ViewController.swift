//
//  ViewController.swift
//  BeymenUygulamasi
//
//  Created by İrem Çaltı on 5.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
        let appearance = UITabBarAppearance()
        
        itemRenkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        func itemRenkDegistir(itemAppearance:UITabBarItemAppearance){
            itemAppearance.selected.iconColor = UIColor.brown
            itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.brown]
            
        }
    }


}

