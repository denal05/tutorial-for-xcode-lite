//
//  ViewController.swift
//  Playing Video
//
//  Created by Denis Aleksandrov on 4/21/15.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    var myVideoPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Nathan", ofType: "m4v")!)
    var myMoviePlayer = MPMoviePlayerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playVideo() {
        myMoviePlayer = MPMoviePlayerController(contentURL: myVideoPath)
        myMoviePlayer.prepareToPlay()
        myMoviePlayer.view.frame = CGRectMake(0, 0, 320, 320)
        view.addSubview(myMoviePlayer.view)
        myMoviePlayer.play()
    }

}

