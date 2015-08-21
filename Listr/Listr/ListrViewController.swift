
import UIKit

class ListrViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var myPeeps = ["Cat", "Gavin", "Hudson", "Dennis", "CZ", "Elise"]

    var indexPath:NSIndexPath = NSIndexPath()
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
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
        self.indexPath = indexPath
    
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "alertSegue"
        {
            if let modelVCViewController = segue.destinationViewController as? modelVCViewController {
                // Do something cool. Like pass data from one view controller to another.
                modelVCViewController.titleData = "My Peeps"
                
                modelVCViewController.descriptionData = myPeeps[indexPath.row]
        
            }
        
        }
    }
}


