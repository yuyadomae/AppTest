//
//  ViewController.swift
//  FoodTracker
//
//  Created by Yuya Domae on 2018/12/28.
//  Copyright © 2018年 Yuya Domae. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var meanNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }

    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        print("ボタンがクリックされました");
        meanNameLabel.text = "default text"
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        meanNameLabel.text = textField.text
    }
}

