//
//  ViewController.swift
//  Hello World
//
//  Created by Denis Aleksandrov on 4/18/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myHelloButton: UIButton!

    var myLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
    
    var resetButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.text = "Say Hello"
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.textColor = UIColor.blueColor()
        myLabel.center = CGPointMake(160, 100)
        view.addSubview(myLabel)
        
        resetButton.setTitle("Reset", forState: UIControlState.Normal)
        resetButton.backgroundColor = UIColor.redColor()
        resetButton.addTarget(self, action: "resetMessage", forControlEvents: UIControlEvents.TouchUpInside)
        resetButton.center = CGPointMake(160, 400)
        view.addSubview(resetButton)
        
        myHelloButton.backgroundColor = UIColor.greenColor()
        myHelloButton.center = CGPointMake(160, 200)
        // Notice no view.addSubview(myHelloButton)
        // We had to connect this via the View Controller, in the Connections Inspector
    }

    @IBAction func sayHello() {
        myLabel.text = "HELLO WORLD"
        myLabel.textColor = UIColor.redColor()
    }
    
    func resetMessage() {
        myLabel.text = "Say Hello"
        myLabel.textColor = UIColor.blueColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

