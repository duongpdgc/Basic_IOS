//
//  ViewController.swift
//  PushVSPresent
//
//  Created by Trương Thắng on 3/23/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class LastViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pop() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onClickDismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
