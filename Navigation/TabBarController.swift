//
//  TabBarController.swift
//  Navigation
//
//  Created by Руфат Багирли on 20.02.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        tabBar.backgroundColor = .white
        setupVCs()
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        rootViewController.navigationItem.title = title
        
        return navController
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: FeedViewController(), title: NSLocalizedString("Домой", comment: ""), image: UIImage(systemName: "house")!),
        
            createNavController(for: LogInViewController(), title: NSLocalizedString("Авторизация", comment: ""), image: UIImage(systemName: "person")!)
        ]
    }
}
