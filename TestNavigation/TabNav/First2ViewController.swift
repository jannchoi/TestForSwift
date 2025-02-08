//
//  First2ViewController.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit
import SnapKit

class First2ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("First2ViewController", #function)
        print(self.navigationController)
        view.backgroundColor = .lightGray
        navigationItem.title = "First1"

        let backButton = UIButton(type: .system)
        backButton.setTitle("Back", for: .normal)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)

        view.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First2ViewController", #function)
        print(self.navigationController)
    }

    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
}

