//
//  ViewController.swift
//  Carpenter_BasicInteractions
//
//  Created by Zachary Carpenter on 3/27/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textField.text
    }
    
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = ""
        textField.text = ""
    }
}

