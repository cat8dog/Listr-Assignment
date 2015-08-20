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
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myPeeps.count
    }
    
    
    // added delegate method for didSelectRowAtIndexPath
    func  tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let alertController = UIAlertController(title: "Row Selected", message: "You've selected a row", preferredStyle: .Alert)
        
        let okayAction = UIAlertAction(title: "OKAY", style: .Cancel) {
            (action) in
            println(action)
        }
        
      //  presentViewController(alertController, animated: true)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        cell.textLabel?.text = self.myPeeps[indexPath.row]
        return cell
    }

    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "presentation" {
            if let destinationVC = segue.destinationViewController as? ViewController {
                println("this tutorial really blows!!!")
            }
        }
        
    }


}





