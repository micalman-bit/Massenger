//
//  MainTabBarController.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 09.02.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            tabBarAppearance.backgroundColor = UIColor.mainWhite()
            UITabBar.appearance().standardAppearance = tabBarAppearance

            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
        
        tabBar.tintColor = UIColor(red: 142, green: 90, blue: 247)
        
        let listViewController = ListViewController()
        let peopleViewController = PeopleViewController()
        
        let convImage = UIImage(systemName: "bubble.left.and.bubble.right")!
        let peopleImage = UIImage(systemName: "person.2")!
        
        viewControllers = [
            generateNavigationController(rootViewController: listViewController, title: "Conversation", image: convImage),
            generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage)
        ]
    }
    
    private func generateNavigationController (rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
