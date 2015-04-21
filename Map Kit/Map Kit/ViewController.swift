//
//  ViewController.swift
//  Map Kit
//
//  Created by Denis Aleksandrov on 4/21/15.
//  Copyright (c) 2015 Denis Aleksandrov. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func zoomToNewYork() {
        var latitude: CLLocationDegrees = 40.75
        var longitude: CLLocationDegrees = -73.99
        
        var latitudeDelta: CLLocationDegrees = 0.01
        var longitudeDelta: CLLocationDegrees = 0.01
        
        var mapSpan: MKCoordinateSpan = MKCoordinateSpanMake(latitudeDelta, longitudeDelta)
        var myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var myRegion: MKCoordinateRegion = MKCoordinateRegionMake(myLocation, mapSpan)
        
        myMap.setRegion(myRegion, animated: true)
        
        var empireStatePin = MKPointAnnotation()
        
        empireStatePin.title = "Empire State Building"
        empireStatePin.subtitle = "Once the tallest building."
        empireStatePin.coordinate = myLocation
        
        myMap.addAnnotation(empireStatePin)
    }
    
    @IBAction func satelliteView() {
        myMap.mapType = MKMapType.Satellite
    }
    
    @IBAction func mapView() {
        myMap.mapType = MKMapType.Standard
    }
}

