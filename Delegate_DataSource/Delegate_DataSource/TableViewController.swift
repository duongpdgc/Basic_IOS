//
//  TableViewController.swift
//  Delegate_DataSource
//
//  Created by Admin on 12/26/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    var vcSorce = DataSource()
    var vcGate = Delegate()
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Use the edit button item provided by the table view controller.
        navigationItem.leftBarButtonItem = editButtonItem
        
        tableView.dataSource = vcSorce
        tableView.delegate = vcGate

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnUnwind(_ sender: UIStoryboardSegue) {
        if let viewControllerNumber = sender.source as? ViewController{
            if let number = viewControllerNumber.data {
                if tableView.indexPathForSelectedRow != nil {
                    vcSorce.arrString[tableView.indexPathForSelectedRow!.row] = number
                    tableView.reloadData()
                } else {
                    let newIndexpath = IndexPath(row: vcSorce.arrString.count, section: 0)
                    vcSorce.arrString.append(number)
                    tableView.insertRows(at: [newIndexpath], with: .automatic)
                }
            }
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        switch  segue.identifier ?? "" {
        case "show" :
            let vc = segue.destination as? ViewController
            if tableView.indexPathsForSelectedRows != nil {
               vc?.data = String(vcSorce.arrString[tableView.indexPathForSelectedRow!.row])
                vc?.displayNumber = String(vcSorce.arrString[tableView.indexPathForSelectedRow!.row])
            }
        default:
            return
        }
    }
}

