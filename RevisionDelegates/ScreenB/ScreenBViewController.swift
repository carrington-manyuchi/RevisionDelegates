//
//  ScreenBViewController.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/19.
//

import UIKit

class ScreenBViewController: UIViewController {
    
    weak var screenBView: ScreenBViewDelegate?
    
    @IBOutlet weak var iPadDevice: UIButton!
    @IBOutlet weak var iPhoneDevice: UIButton!
    @IBOutlet weak var MacDevice: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func iPadDeviceTapped(_ sender: UIButton) {
        screenBView?.didTapIPadDevice(selectedDevice: "ipad")
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func iPhoneDeviceTapped(_ sender: UIButton) {
        screenBView?.didTapIPhoneDevice(selectedDevice: "iPhone")
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func MacDeviceTapped(_ sender: UIButton) {
        screenBView?.didTapMacDevice(selectedDevice: "mac")
        navigationController?.popViewController(animated: true)
    }
    
    
}
