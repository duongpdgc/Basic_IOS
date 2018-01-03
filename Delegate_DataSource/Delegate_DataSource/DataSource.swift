//
//  ViewController.swift
//  Delegate_DataSource
//
//  Created by Admin on 12/26/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource {

    var arrString = [String]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numberArray", for: indexPath)  
        cell.textLabel?.text = String(arrString[indexPath.row])
        return cell
    }
}
