//
//  StringSource.swift
//  Switch
//
//  Created by Admin on 12/29/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation
import UIKit

class StringSource: NSObject, UITableViewDataSource {
    
    var arrayString = ["Duong","Dep","Trai"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = String(arrayString[indexPath.row])
        return cell
    }
}
