//
//  ViewController.swift
//  MapDemo
//
//  Created by sanjay chaurasia on 5/7/16.
//  Copyright © 2016 H2So4. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func refresh(sender: AnyObject) {
        
        let obj = UserLocation(accuracy:kCLLocationAccuracyBest, distance: 30)
        
        print("latitude \(obj.coordinates?.latitude) longitude = \(obj.coordinates?.longitude)")
        print("current latitude \(obj.mylocation.location?.coordinate.latitude) current longitude = \(obj.mylocation.location?.coordinate.longitude)")
        
        /* class locationtracker : LocationServiceDelegate{
            func tracingLocation(currentLocation: CLLocation){
                print("latitude \(currentLocation.coordinate.latitude)) longitude = \(currentLocation.coordinate.longitude)")
            }
            func tracingLocationDidFailWithError(error: NSError){
                
           
            }
        }
        let obj = LocationService()
        obj.delegate = locationtracker()
        obj.startUpdatingLocation()*/
        
        
    }
}

