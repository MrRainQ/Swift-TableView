//
//  ViewController.swift
//  Swift-TableView
//
//  Created by sen5labs on 14-10-9.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.rowHeight = 60
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
    }

   

    override  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
    
   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    var cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")
        cell.textLabel.text = "indexPath.row=====\(indexPath.row)"
        cell.detailTextLabel?.text = "王八蛋:" + "\(indexPath.row)"
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var cell = tableView.cellForRowAtIndexPath(indexPath)
        var second = SecondController()
        second.btnTitle = cell?.detailTextLabel?.text
        self.presentViewController(second, animated: true, completion: nil)
//        self.navigationController?.pushViewController(second, animated: true)
    }

}

