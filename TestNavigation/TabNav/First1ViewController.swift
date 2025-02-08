//
//  First1ViewController.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit
import SnapKit

class First1ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("First1ViewController",#function)
        print(self.navigationController)
        view.backgroundColor = .white
        navigationItem.title = "First"

        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Go to First1", for: .normal)
        nextButton.addTarget(self, action: #selector(goToFirst1VC), for: .touchUpInside)

        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First1ViewController",#function)
        print(self.navigationController)
    }

    @objc func goToFirst1VC() {
        let first1VC = First2ViewController()
        navigationController?.pushViewController(first1VC, animated: true)
    }
}

