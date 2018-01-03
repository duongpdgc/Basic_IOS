//
//  NumberSource.swift
//  Switch
//
//  Created by Admin on 12/29/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation
import UIKit

class NumberSource: NSObject, UITableViewDataSource {
    var arrNumber = Array(1...10)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = String(arrNumber[indexPath.row])
        return cell
    }
}
