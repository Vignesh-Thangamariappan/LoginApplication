//
//  Alert.swift
//  LoginApplication
//
//  Created by user on 11/9/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

import Foundation
import UIKit

class Alert {
    
    func showAlert(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
    
}

