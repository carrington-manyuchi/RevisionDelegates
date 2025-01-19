//
//  SelectionView.swift
//  RevisionDelegates
//
//  Created by Manyuchi, Carrington C on 2025/01/17.
//

import Foundation
import UIKit

protocol SelectionViewDelegate: AnyObject {
    func didSelectIPadDevice(_ selectedDevice: String)
    func didSelectIPhoneDevice(_ selectedDevice: String)
    func didSelectMacDevice(_ selectedDevice: String)
}
