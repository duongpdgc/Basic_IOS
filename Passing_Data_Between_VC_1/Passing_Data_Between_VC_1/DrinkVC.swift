//
//  DinkVC.swift
//  Passing_Data_Between_VC_1
//
//  Created by Admin on 12/23/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class DrinkVC: UIViewController {

    @IBOutlet weak var drinkDisplayLabel: UILabel!
    @IBOutlet weak var foodTextField: UITextField!
    
    var textDrinkValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        drinkDisplayLabel.text = textDrinkValue
    }
}
