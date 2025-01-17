//
//  SecondViewController.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/17.
//

import UIKit

class SecondViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Send message back with the delegate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var optionalButton: UIButton = {
        let button = UIButton()
        button.setTitle("Send optional message back with the delegate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(optionalButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @objc private func buttonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func optionalButtonTapped() {
        navigationController?.popViewController(animated: true)
    }

}
