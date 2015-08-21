
import UIKit

class modelVCViewController: UIViewController {

    @IBOutlet weak var titleHeader: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    
    var titleData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.titleHeader.text = titleData//"New Title"
        self.descriptionText.text = "This is some text blah blah blah blah"
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
