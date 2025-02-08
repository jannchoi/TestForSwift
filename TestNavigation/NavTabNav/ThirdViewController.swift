//
//  ThirdViewController.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit
import SnapKit

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ThirdViewController",#function)
        print(self.navigationController)
        view.backgroundColor = .yellow
        navigationItem.title = "Third"

        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Next (Disabled)", for: .normal)
        nextButton.isEnabled = false  // 다음 화면 없음

        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ThirdViewController",#function)
        print(self.navigationController)
    }
}
