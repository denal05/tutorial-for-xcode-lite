//
//  ViewController.swift
//  View Transitions
//
//  Created by Denis Aleksandrov on 4/19/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showView() {
        let svc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        svc.sentMessage = "Hello world!"
        showViewController(svc, sender: self)
    }

}

