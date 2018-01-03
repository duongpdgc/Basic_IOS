//
//  ViewControllerFirst.swift
//  Notification
//
//  Created by Admin on 12/27/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class ViewControllerFirst: UIViewController {

    @IBOutlet weak var FirstVCLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doSomethingAfterNotified),
                                               name: NSNotification.Name(rawValue: myNotificationKey),
                                               object: nil) }
    
    func doSomethingAfterNotified() {
        print("I've been notified")
        FirstVCLabel.text = "Damn, I feel your spark 😱"
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
