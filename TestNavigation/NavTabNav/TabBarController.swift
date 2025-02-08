//
//  TabBarController.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TabBarController", #function)
        print(self.navigationController)
        view.backgroundColor = .white

        let firstTab = SecondViewController()
        let secondTab = ThirdViewController()
        
        firstTab.tabBarItem = UITabBarItem(title: "Second", image: nil, tag: 0)
        secondTab.tabBarItem = UITabBarItem(title: "Third", image: nil, tag: 1)
        
        viewControllers = [firstTab, secondTab] // 탭 설정
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TabBarController", #function)
        print(self.navigationController)
    }
}
