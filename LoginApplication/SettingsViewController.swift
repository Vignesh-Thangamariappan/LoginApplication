//
//  SettingsViewController.swift
//  LoginApplication
//
//  Created by user on 11/9/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func logoutTapped(_ sender: Any) {
        
        
        let defaults = UserDefaults.standard
        defaults.set(false, forKey: "isUserLoggedIn")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "Login")
        controller.modalTransitionStyle = .flipHorizontal
        self.present(controller, animated: true, completion: nil)
    }

}
