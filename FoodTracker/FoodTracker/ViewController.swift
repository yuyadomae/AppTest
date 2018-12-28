//
//  ViewController.swift
//  FoodTracker
//
//  Created by Yuya Domae on 2018/12/28.
//  Copyright © 2018年 Yuya Domae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var meanNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        print("ボタンがクリックされました");
        meanNameLabel.text = "default text";
    }
}

