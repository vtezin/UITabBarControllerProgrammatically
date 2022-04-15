//
//  TabBar.swift
//  UITabBarControllerProgrammatically
//
//  Created by Vladimir Tezin on 15.04.2022.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
        // Do any additional setup after loading the view.
    }
    
 
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                    title: String,
                                                    image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
          navController.navigationBar.prefersLargeTitles = true
          rootViewController.navigationItem.title = title
          return navController
      }
    
    func setupVCs() {
          viewControllers = [
              createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
              createNavController(for: LoginViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
              createNavController(for: LoginViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
          ]
      }

}
