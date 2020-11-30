//
//  WelcomeViewController.swift
//  passData
//
//  Created by Максим on 30.11.2020.
//

import UIKit

class WelcomeViewController: UIViewController {

    var loginWelcome: String?
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func backButton(_ sender: UIButton) {
    }
    //we need to override our method(screen) coz we received some information
    //from other view without doing any actions on current view
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Hello, \(loginWelcome ?? "user")"
        
        //or
        //we can check IF our loginWelcome received any msg
        //guard let login = self.loginWelcome else { return }
        //nameLabel.text = "Hello, \(loginWelcome)"
    }
    
}
