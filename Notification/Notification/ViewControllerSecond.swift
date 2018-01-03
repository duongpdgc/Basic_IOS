//
//  ViewControllerSecond.swift
//  Notification
//
//  Created by Admin on 12/27/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit
let myNotificationKey = "com.bobthedeveloper.notificationKey"

class ViewControllerSecond: UIViewController {

    @IBOutlet weak var secondVCLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doThisWhenNotify),
                                               name: NSNotification.Name(rawValue: myNotificationKey),
                                               object: nil)
    }
    
    func doThisWhenNotify() {
        print("I've sent a spark!")
    }

    @IBAction func tabToNotifyBack(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: myNotificationKey), object: self)
        
        secondVCLabel.text = "Notification Completed!😜"
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
