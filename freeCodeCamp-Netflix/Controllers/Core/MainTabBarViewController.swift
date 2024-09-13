//
//  ViewController.swift
//  freeCodeCamp-Netflix
//
//  Created by RainBowT on 2024/8/9.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground

        let vcHome = UINavigationController(rootViewController: HomeViewController())
        let vcUpcoming = UINavigationController(rootViewController:UpcomingViewController())
        let vcSearch = UINavigationController(rootViewController:SearchViewController())
        let vcDownloads = UINavigationController(rootViewController: DownloadsViewController())
        
        vcHome.tabBarItem.image = UIImage(systemName: "house")
        vcUpcoming.tabBarItem.image = UIImage(systemName: "play.circle")
        vcSearch.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vcDownloads.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vcHome.title = "Home"
        vcUpcoming.title = "Coming Soon"
        vcSearch.title = "Top Search"
        vcDownloads.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vcHome, vcUpcoming, vcSearch, vcDownloads], animated: true)
    }
}

