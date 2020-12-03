//
//  ViewController.swift
//  passData
//
//  Created by Максим on 29.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginField: UITextField!
    
    @IBOutlet weak var password: UITextField!
    @IBAction func pushButton(_ sender: UIButton) {
    }
    @IBOutlet weak var whatsChangedLabel: UILabel!
    
    //this function will terminate our welcomeViewController window
    //and relocate us to our main screen
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? WelcomeViewController else { return }
        // or guard segue.source is WelcomeViewController else { return }
        self.whatsChangedLabel.text = svc.nameLabel.text
        // so now this function allow us to receive data from terminated WelcomeViewController screen
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //trying to reach destination point next ViewController
        guard let dvc = segue.destination as? WelcomeViewController else {return}
        dvc.loginWelcome = loginField.text
        //now loginWelcome at WelcomeViewController screen will include
        //our text from label loginField
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

