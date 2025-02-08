//
//  Second1ViewController.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit
import SnapKit

class Second1ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second1ViewController", #function)
        print(self.navigationController)
        view.backgroundColor = .yellow
        navigationItem.title = "Second"

        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Go to Second1", for: .normal)
        nextButton.addTarget(self, action: #selector(goToSecond1VC), for: .touchUpInside)

        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Second1ViewController", #function)
        print(self.navigationController)
    }

    @objc func goToSecond1VC() {
        let second1VC = Second2ViewController()
        navigationController?.pushViewController(second1VC, animated: true)
    }
}
