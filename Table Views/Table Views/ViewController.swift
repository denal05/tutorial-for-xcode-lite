//
//  ViewController.swift
//  Table Views
//
//  Created by Denis Aleksandrov on 4/21/15.
//  Copyright (c) 2015 Denis Aleksandrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var states: [String] = ["Arizona", "California", "Delaware", "Florida", "Georgia", "Maine", "Texas"]
    var capitals: [String] = ["Phoenix", "Sacramento", "Dover", "Tallahassee", "Atlanta", "Augusta", "Austin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section:Int)->Int {
        return states.count
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!)->UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        
        cell.textLabel!.text = states[indexPath.row]
        cell.detailTextLabel!.text = capitals[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected row \(indexPath.row)")
    }
}

