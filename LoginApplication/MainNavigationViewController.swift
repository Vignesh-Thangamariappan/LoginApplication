//
//  MainNavigationViewController.swift
//  LoginApplication
//
//  Created by user on 11/9/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

import UIKit

class MainNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        let isUserLoggedIn = defaults.bool(forKey: "isUserLoggedIn")
        
        if isUserLoggedIn {
            
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let mainTabBarController = storyboard.instantiateViewController(withIdentifier:"Dashboard")
            self.setViewControllers([mainTabBarController], animated: true)
        }
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
