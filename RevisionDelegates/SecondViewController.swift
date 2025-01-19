//
//  SecondViewController.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/17.
//

import UIKit

protocol SecondViewControllerView: AnyObject {
    func didSendMessage(_ message: String)
    func didSendOptionalMessage(_ message: String)
}

extension SecondViewControllerView {
    func didSendOptionalMessage(_ message: String) {}
}

class SecondViewController: UIViewController {
    
    var secondViewControllerView: SecondViewControllerView?
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Send message back with the delegate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var optionalButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Send optional message back with the delegate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(optionalButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationControllerSetup()
        setupViews()

    }

    @objc private func buttonTapped() {
        let message = "Wow delegates are cool"
        secondViewControllerView?.didSendMessage(message)
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func optionalButtonTapped() {
        let message = "I am the optional message back with the delegate"
        secondViewControllerView?.didSendOptionalMessage(message)
        navigationController?.popViewController(animated: true)
    }

    private func navigationControllerSetup() {
        navigationItem.title = "Second"
        navigationItem.hidesBackButton = true
        view.backgroundColor = .white
    }
    
    private func setupViews() {
        view.addSubview(button)
        view.addSubview(optionalButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        let buttonConstraints = [
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 55),
        ]
        
        let optionalButtonConstraints = [
            optionalButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 16),
            optionalButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            optionalButton.heightAnchor.constraint(equalToConstant: 55),
        ]
        
        NSLayoutConstraint.activate(buttonConstraints)
        NSLayoutConstraint.activate(optionalButtonConstraints)
    }
            
}
