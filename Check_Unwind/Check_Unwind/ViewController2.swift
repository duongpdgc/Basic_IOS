//
//  ViewController2.swift
//  Check_Unwind
//
//  Created by Admin on 12/25/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var lbViewController2: UILabel!
    @IBOutlet weak var txtViewController1: UITextField!
    
    var lbText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbViewController2.text = lbText
    }
}
