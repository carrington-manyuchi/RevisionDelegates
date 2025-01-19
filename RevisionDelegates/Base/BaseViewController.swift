//
//  BaseViewController.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/17.
//

import UIKit

class BaseViewController: UIViewController {
    
    private weak var delegate: SelectionViewDelegate?
    
    @IBOutlet weak var selectedImage: UIImageView! {
        didSet {
            selectedImage.contentMode = .scaleAspectFit
            selectedImage.image = UIImage(named: "all-products")
        }
    }
    
    @IBOutlet private weak var chooseYourDeviceButton: UIButton! {
        didSet {
            let title = "Choose your device"
            chooseYourDeviceButton.setTitle(title, for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationControllerSetup()
    }
    
    func navigationControllerSetup() {
        view.backgroundColor  = .systemBackground
    }
    
    @IBAction func chooseYourDeviceButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SelectionViewController", bundle: nil)
        guard let selectionViewController = storyboard.instantiateViewController(withIdentifier: "SelectionViewController") as? SelectionViewController else { return }
        selectionViewController.viewModel = self
        navigationController?.pushViewController(selectionViewController, animated: true)
    }
    
}

extension BaseViewController: SelectionViewDelegate {
    func didSelectIPadDevice(_ selectedDevice: String) {
        selectedImage.image = UIImage(named: selectedDevice)
    }
    
    func didSelectIPhoneDevice(_ selectedDevice: String) {
        selectedImage.image = UIImage(named: selectedDevice)
    }
    
    func didSelectMacDevice(_ selectedDevice: String) {
        selectedImage.image = UIImage(named: selectedDevice)
    }
    
    
}
