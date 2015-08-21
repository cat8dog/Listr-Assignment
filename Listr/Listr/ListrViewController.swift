//
//  ListrViewController.swift
//  Listr
//
//  Created by Catherine Reyto on 2015-08-19.
//  Copyright (c) 2015 Catherine Reyto. All rights reserved.
//

import UIKit

class ListrViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var myPeeps = ["Cat", "Gavin", "Hudson", "Dennis", "CZ", "Elise"]
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myPeeps.count
    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        cell.textLabel?.text = self.myPeeps[indexPath.row]
        return cell
    }
    

    
    
    // added delegate method for didSelectRowAtIndexPath
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    
    // alert variable (feature of UIAlertController class, as the former UIAlertView is now depreciated)
        var alert:UIAlertController = UIAlertController(title: "Row Selected", message: "You've selected a row", preferredStyle: UIAlertControllerStyle.Alert)
    
    // alert action variable that will perform the segue action when clicked.
        var defaultAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (action) -> Void in
        
        self.performSegueWithIdentifier("alertSegue", sender: self)
        
        }
     
    // attaches the action ("OK" button) as a property of the alert variable.
        alert.addAction(defaultAction)
        self.presentViewController(alert, animated: true) { () -> Void in
            
        }
  
    }
    

}