//
//  SecondViewController.swift
//  TestPassData
//
//  Created by 최정안 on 2/9/25.
//

import UIKit
import SnapKit

final class SecondViewController: UIViewController {
    var passData: ((String?) -> (String?))?
    var selectedItem = "selected"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray

        // 백 버튼
        let backButton = UIButton(type: .system)
        backButton.setTitle("Back to FirstViewController", for: .normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        view.addSubview(backButton)

        backButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }

    @objc func backButtonTapped() {
        passData?(selectedItem)

        // 첫 번째 화면으로 돌아가기
        navigationController?.popViewController(animated: true)
    }
}
