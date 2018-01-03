//
//  ViewController.swift
//  Check_Unwind
//
//  Created by Admin on 12/25/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var lbViewController1: UILabel!
    @IBOutlet weak var txtViewController2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController2 = segue.destination as? ViewController2 else {
            return
        }
        viewController2.lbText = txtViewController2.text
    }
    
    @IBAction func didUnwindViewController2(_ sender: Any) {
        guard let viewController2 = sender.source as? ViewController2 else {
            return
        }
    }
}

