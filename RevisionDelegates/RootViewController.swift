//
//  ViewController.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/17.
//

import UIKit

class RootViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Root: I am waiting for a message..."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationControllerSetup()
        setupViews()
    }
    
    private func navigationControllerSetup() {
        navigationItem.title = "Root"
        let messageBarButtonItem = UIBarButtonItem(title: "Message", style: .done, target: self, action: #selector(messageBarButtonItemTapped))
        let resetBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(resetBarButtonItemTapped))
        let pushBarButtonItem = UIBarButtonItem(title: "Push", style: .done, target: self, action: #selector(pushBarButtonItemTapped))
        
        navigationItem.setLeftBarButtonItems([messageBarButtonItem, resetBarButtonItem], animated: false)
        navigationItem.setRightBarButton(pushBarButtonItem, animated: false)
    }

    @objc private func pushBarButtonItemTapped() {
        let controller = SecondViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func messageBarButtonItemTapped() {
       
    }
    
    @objc private func resetBarButtonItemTapped() {
        
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }


}

