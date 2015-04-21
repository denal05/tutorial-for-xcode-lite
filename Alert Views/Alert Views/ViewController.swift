//
//  ViewController.swift
//  Alert Views
//
//  Created by Denis Aleksandrov on 4/21/15.
//

import UIKit

class ViewController: UIViewController {

    var helloButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        helloButton.setTitle("Say Hello", forState: UIControlState.Normal)
        helloButton.backgroundColor = UIColor.greenColor()
        //helloButton.addTarget(self, action: "showMessage", forControlEvents: UIControlEvents.TouchUpInside)
        helloButton.addTarget(self, action: "showAlertController", forControlEvents: UIControlEvents.TouchUpInside)
        helloButton.center = CGPointMake(160, 300)
        view.addSubview(helloButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showMessage() {
        var messageTitle = "Hello World"
        var messageString = "Thanks for visiting"
        
        var alert: UIAlertView = UIAlertView()
        alert.title = messageTitle
        alert.message = messageString
        alert.addButtonWithTitle("OK")
        alert.show()
    }
    
    func showAlertController() {
        let myTitle = "HELLO WORLD"
        //let message = NSLocalizedString(key: "", tableName: "", bundle: NSBundle.self, value: "Are you feeling well?", comment: "")
        let myMessage = NSLocalizedString("Are you feeling well?", comment: "")
        //let cancelButtonTitle = NSLocalizedString(key: "", tableName: "", bundle: NSBundle.self, value: "No", comment: "")
        let cancelButtonTitle = NSLocalizedString("No", comment: "")
        let otherButtonTitle = NSLocalizedString("Yes", comment: "")
        
        let alertController = UIAlertController(title: myTitle, message: myMessage, preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Cancel) {
            action in
                NSLog("User not feeling well")
        }
        
        let otherAction = UIAlertAction(title: otherButtonTitle, style: .Default) {
            action in
                NSLog("User feeling great")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(otherAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
}

