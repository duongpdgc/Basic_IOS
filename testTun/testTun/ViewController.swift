//
//  ViewController.swift
//  testTun
//
//  Created by Admin on 1/2/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtNumber: UITextField!
    var txtString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtNumber.text = txtString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func arrNumber(_ sender: UIStoryboardSegue) {
        guard let unwindNumber = sender.source as? TableViewController else {
            return
        }
    }
}

