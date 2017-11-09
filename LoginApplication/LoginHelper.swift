//
//  LoginHelper.swift
//  LoginApplication
//
//  Created by user on 11/9/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

import Foundation
import UIKit

class LoginHelper {
    
    
    func isValidEmail(_ input:String)->Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]{2,30}+@[A-Za-z0-9-]{2,12}+\\.[A-Za-z]{2,6}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: input)
    }
    
    func isPassword(_ input:String) -> Bool {
        let pass = "iosDevelopment"
        return pass == input
    }
    
}


