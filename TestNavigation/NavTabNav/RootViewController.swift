//
//  RootViewController.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit
import SnapKit

class RootViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("RootViewController",#function)
        print(self.navigationController)
        view.backgroundColor = .white
        navigationItem.title = "Root"
        
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Go to TabBarController", for: .normal)
        nextButton.addTarget(self, action: #selector(goToTabBar), for: .touchUpInside)
        
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("RootViewController",#function)
        print(self.navigationController)
    }

    @objc func goToTabBar() {
        let tabBarVC = TabBarController()
        navigationController?.pushViewController(tabBarVC, animated: true)
    }
}

