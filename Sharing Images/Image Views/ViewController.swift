//
//  ViewController.swift
//  Image Views
//
//  Created by Denis Aleksandrov on 4/20/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var myLabel: UILabel!
    
    var imageList: [String] = ["palms.jpg","mountain.jpg","newyork.jpg"]
    var nameList:  [String] = ["Beach Vacation", "Hike", "Big Apple"]
    
    let maxImages = 2
    var imageIndex: NSInteger = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        backgroundImage.image = UIImage(named: "palms.jpg")
        myLabel.text = nameList[0]
        
    }

    @IBAction func shareImage() {
        let firstActivityItem = "Check out my great picture"
        let pictureActivityItem: UIImage = UIImage(named: imageList[imageIndex-1])!
        let avc: UIActivityViewController = UIActivityViewController(activityItems:[firstActivityItem,pictureActivityItem], applicationActivities: nil)
        
        self.presentViewController(avc, animated: true, completion: nil)
    }
    
    @IBAction func nextImage() {
        if imageIndex > maxImages {
            imageIndex = 0
        }
        
        backgroundImage.image = UIImage(named:imageList[imageIndex])
        myLabel.text = nameList[imageIndex]
        imageIndex++
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

