//
//  SelectionViewController.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/17.
//

import UIKit

class SelectionViewController: UIViewController {
    
    weak var viewModel: SelectionViewDelegate?
    
    @IBOutlet private weak var chooseYourDeviceLabel: UILabel! {
        didSet {
            chooseYourDeviceLabel.textAlignment = .center
        }
    }
    
    @IBOutlet private weak var selectedIPadDevice: UIButton! {
        didSet {
            selectedIPadDevice.setTitleColor(.white, for: .normal)
            selectedIPadDevice.addTarget(self, action: #selector(selectedIPadDeviceTapped), for: .touchUpInside)
        }
    }
    
    @IBOutlet private weak var selectediPhoneDevice: UIButton! {
        didSet {
            selectediPhoneDevice.setTitleColor(.white, for: .normal)
            selectediPhoneDevice.addTarget(self, action: #selector(selectediPhoneDeviceTapped), for: .touchUpInside)
        }
    }
    
    @IBOutlet private weak var selectedMacDevice: UIButton! {
        didSet {
            selectedMacDevice.setTitleColor(.white, for: .normal)
            selectedMacDevice.addTarget(self, action: #selector(selectedMacDeviceTapped), for: .touchUpInside)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationControllerSetup()
    }
    
    private func navigationControllerSetup() {
        view.backgroundColor = .systemBackground
        navigationItem.hidesBackButton = true
    }
    
    @objc private func selectedIPadDeviceTapped() {
        viewModel?.didSelectIPadDevice("ipad")
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func selectediPhoneDeviceTapped() {
        viewModel?.didSelectIPhoneDevice("iPhone")
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func selectedMacDeviceTapped() {
        viewModel?.didSelectMacDevice("mac")
        navigationController?.popViewController(animated: true)
    }

}

