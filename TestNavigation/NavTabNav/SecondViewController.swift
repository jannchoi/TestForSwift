//
//  SecondViewController.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondViewController",#function)
        print(self.navigationController)
        view.backgroundColor = .lightGray
        navigationItem.title = "Second"

        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Go to Fourth", for: .normal)
        nextButton.addTarget(self, action: #selector(goToFourthVC), for: .touchUpInside)

        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SecondViewController",#function)
        print(self.navigationController)
    }

    @objc func goToFourthVC() {
        let fourthVC = FourthViewController()
        navigationController?.pushViewController(fourthVC, animated: true)
    }
}

