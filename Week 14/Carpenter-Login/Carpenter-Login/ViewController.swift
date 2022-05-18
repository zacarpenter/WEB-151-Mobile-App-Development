//
//  ViewController.swift
//  Carpenter-Login
//
//  Created by Zachary Carpenter on 4/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }

    @IBAction func forgotUsernamePress(_ sender: Any) {
        performSegue(withIdentifier: "Forgot Username", sender: sender)
    }
    
    @IBAction func forgotPasswordPress(_ sender: Any) {
        performSegue(withIdentifier: "Forgot Password", sender: sender)
    }
    
}

