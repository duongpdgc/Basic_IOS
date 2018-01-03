//
//  FirstViewController.swift
//  Transfer data use segue
//
//  Created by Admin on 12/21/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC = segue.destination as? SecondViewController
        secondVC?.FirestVC = self
        
    }
    

}
