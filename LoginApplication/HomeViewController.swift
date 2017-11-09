//
//  HomeViewController.swift
//  LoginApplication
//
//  Created by user on 11/9/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        let defaults = UserDefaults.standard
        let mail = defaults.value(forKey: "username") as? String
        emailLabel.text = mail
        
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
