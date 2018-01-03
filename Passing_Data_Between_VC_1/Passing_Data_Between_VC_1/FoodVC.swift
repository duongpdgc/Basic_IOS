//
//  FoodVC.swift
//  Passing_Data_Between_VC_1
//
//  Created by Admin on 12/23/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class FoodVC: UIViewController {

    @IBOutlet weak var foodDisplayLabel: UILabel!
    @IBOutlet weak var drinkTextField: UITextField!
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        guard let drinkVC = segue.destination as? DrinkVC else { return }
        drinkVC.textDrinkValue = drinkTextField.text
    }

    
    @IBAction func didUnwindFromDrinkVc(_ sender: UIStoryboardSegue) {
        guard let drinkVC = sender.source as? DrinkVC else { return }
        foodDisplayLabel.text = drinkVC.foodTextField.text
    }
}
