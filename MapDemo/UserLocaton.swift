//
//  UserLocaton.swift
//  MapDemo
//
//  Created by sanjay chaurasia on 5/7/16.
//  Copyright © 2016 H2So4. All rights reserved.
//

import Foundation
import CoreLocation

class UserLocation: NSObject , CLLocationManagerDelegate {
    
  override  init() {
        super.init()
    
  
    }
    var  mylocation : CLLocationManager = CLLocationManager()
   var accuracy : CLLocationAccuracy?
    var distance : Double?
    var coordinates : CLLocationCoordinate2D?
    var error : NSError?
    init(accuracy:CLLocationAccuracy, distance:CLLocationDistance) {
         super.init()
        self.accuracy = accuracy
        self.distance = distance
        self.mylocation.desiredAccuracy = self.accuracy!
        self.mylocation.distanceFilter = self.distance!
        self.mylocation.delegate = self
        //self.mylocation.requestWhenInUseAuthorization()
        self.mylocation.requestAlwaysAuthorization()
       /* if self.mylocation.respondsToSelector(#selector(CLLocationManager.requestWhenInUseAuthorization)) {
            self.mylocation.requestWhenInUseAuthorization()
        }*/
        self.mylocation.startUpdatingLocation()
       
      
    }
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       
        self.coordinates = manager.location?.coordinate
       
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        self.error = error
    }
    
}

