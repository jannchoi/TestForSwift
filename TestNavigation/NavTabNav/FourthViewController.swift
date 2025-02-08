//
//  FourthViewController.swift
//  TesNvigation
//
//  Created by 최정안 on 2/8/25.
//

import UIKit
import SnapKit

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FourthViewController",#function)
        print(self.navigationController)
        view.backgroundColor = .blue
        navigationItem.title = "Fourth"

        let backButton = UIButton(type: .system)
        backButton.setTitle("Back to Second", for: .normal)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)

        view.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("FourthViewController",#function)
        print(self.navigationController)
    }

    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
