//
//  TabBar1Controller.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit

class TabBar1Controller: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstTab = UINavigationController(rootViewController: First1ViewController()) // 첫 번째 탭
        let secondTab = UINavigationController(rootViewController: Second1ViewController()) // 두 번째 탭

        firstTab.tabBarItem = UITabBarItem(title: "First", image: nil, tag: 0)
        secondTab.tabBarItem = UITabBarItem(title: "Second", image: nil, tag: 1)

        viewControllers = [firstTab, secondTab] // 탭 설정
    }
}
