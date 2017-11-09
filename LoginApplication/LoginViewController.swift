//
//  ViewController.swift
//  LoginApplication
//
//  Created by user on 11/9/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

var email = "user"
import UIKit
import Foundation


class LoginViewController: UIViewController {
    @IBOutlet var loginButton: UIButton!
    let loginHelper = LoginHelper()
    let alert = Alert()
    
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var emailField: UITextField!
    enum ValidateError:Error {
        case missingField
        case invalidEmail
        case incorrectPassword
        case incorrectPasswordLength
    }
    
    
    @IBOutlet var loadingIcon: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        loginButton.layer.cornerRadius = 5.0
        loadingIcon.isHidden = true
        loadingIcon.stopAnimating()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        do {
            try login()
            loadingIcon.isHidden = false
            loadingIcon.startAnimating()
            let defaults = UserDefaults.standard
            defaults.set(true, forKey: "isUserLoggedIn")
            defaults.set(email, forKey: "username")
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "Dashboard")
            self.present(controller, animated: true, completion: nil)
            
        }
            
        catch ValidateError.missingField {
            alert.showAlert(title: "Missing Field(s)", message: "Please fill in all the fields", vc: self)
        } catch ValidateError.incorrectPasswordLength {
            alert.showAlert(title: "Too Short", message: "Password is too short", vc: self)
        } catch ValidateError.incorrectPassword {
            alert.showAlert(title: "Incorrect Password", message: "Enter the correct password", vc: self)
        } catch ValidateError.invalidEmail {
            alert.showAlert(title: "Incorrect Email", message: "Please enter the correct mail", vc: self)
        }catch {
            alert.showAlert(title: "Unable To Login", message: "There was an error when attempting to login", vc: self)
        }
    }
    
    
    func login() throws {
        
        var password:String = ""
        if let mail = emailField.text {
            if let pass = passwordField.text {
                email = mail
                password = pass
            }
        }
        
        if  emailField.text == nil || passwordField.text == nil  {
            throw ValidateError.missingField
        }
        
        if !loginHelper.isValidEmail(email) {
            throw ValidateError.invalidEmail
        }
        
        if password.count < 6 {
            throw ValidateError.incorrectPasswordLength
        }
        
        if !loginHelper.isPassword(password) {
            throw ValidateError.incorrectPassword
        }
        
    }
    
}

