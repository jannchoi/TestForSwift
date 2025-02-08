//
//  FirstViewController.swift
//  TestPassData
//
//  Created by 최정안 on 2/9/25.
//

import UIKit
import SnapKit

final class FirstViewController: UIViewController {
    var star: String?
    private let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white


        label.text = "Selected Star: None"
        view.addSubview(label)

        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        let mainButton = UIButton(type: .system)
        mainButton.setTitle("Go to SecondViewController", for: .normal)
        mainButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(mainButton)

        mainButton.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    @objc func buttonTapped() {
        let vc = SecondViewController()

        vc.passData = { data in
            if let data = data {
                self.star = data
                self.label.text = "Selected Star: \(data)"
            } else {
                return self.star
            }
            return nil
        }

        // SecondViewController로 이동
        navigationController?.pushViewController(vc, animated: true)
    }
}

