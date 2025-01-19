//
//  ScreenAViewController.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/19.
//

import UIKit

class ScreenAViewController: UIViewController {
    
    
    @IBOutlet weak var selectedDeviceImage: UIImageView!
    
    
    @IBOutlet weak var chooseYourDevice: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func chooseYourDeviceButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "ScreenBViewController", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "ScreenBViewController") as? ScreenBViewController else { return }
        vc.screenBView = self
        navigationController?.pushViewController(vc, animated: true)
    }
    

}


extension ScreenAViewController: ScreenBViewDelegate {
    func didTapIPadDevice(selectedDevice: String) {
        selectedDeviceImage.image = UIImage(named: selectedDevice)
    }
    
    func didTapMacDevice(selectedDevice: String) {
        selectedDeviceImage.image = UIImage(named: selectedDevice)
    }
    
    func didTapIPhoneDevice(selectedDevice: String) {
        selectedDeviceImage.image = UIImage(named: selectedDevice)
    }
    
    
}
