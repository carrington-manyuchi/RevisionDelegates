//
//  ScreenBView.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/19.
//

import Foundation


protocol ScreenBViewDelegate: AnyObject {
    func didTapIPadDevice(selectedDevice: String)
    func didTapMacDevice(selectedDevice: String)
    func didTapIPhoneDevice(selectedDevice: String)
}
