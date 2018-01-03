//
//  ViewController.swift
//  Delegate_DataSource
//
//  Created by Admin on 12/27/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTableViewController: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var lbDisplayNumber: UILabel!
    var data : String?
    var displayNumber : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbDisplayNumber.text = displayNumber
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as? UIBarButtonItem , button === saveButton else {
            return
        }
        data = String(txtTableViewController.text!)
    }
}


