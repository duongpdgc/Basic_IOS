//
//  SecondViewController.swift
//  Transfer data use segue
//
//  Created by Admin on 12/21/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var FirestVC: FirstViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let text =  FirestVC?.textField.text{
            label.text = text
        }
    }

}
