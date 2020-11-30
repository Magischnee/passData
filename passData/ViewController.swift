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

