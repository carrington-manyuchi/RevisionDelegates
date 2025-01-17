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
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

