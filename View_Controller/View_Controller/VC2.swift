//
//  VC2.swift
//  View_Controller
//
//  Created by Admin on 12/3/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class VC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("VC2 did load ")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("VC2 will appear ")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("VC2 did appear ")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("VC2 will disappear ")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("VC2 did disappear ")
    }

}
