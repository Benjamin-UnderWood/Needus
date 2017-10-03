//
//  MainViewController.swift
//  needUs
//
//  Created by idea on 2017/10/3.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MAMapViewDelegate {

    var mapView: MAMapView!
    var isRecording: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initMAMapView() {
        
        mapView = MAMapView(frame: self.view.bounds)
        mapView.pausesLocationUpdatesAutomatically = false
        mapView.allowsBackgroundLocationUpdates = true
        mapView.distanceFilter = 10.0
        mapView.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        mapView.delegate = self
        self.view.addSubview(mapView)
        self.view.sendSubview(toBack: mapView)
    }
    
    func mapView(_ mapView: MAMapView!, didUpdate userLocation: MAUserLocation!, updatingLocation: Bool) {
        
        if updatingLocation {
            return
        }
        let location: CLLocation? = userLocation.location
        
        if location == nil {
            return
        }
        CLLocation
        
        if isRecording{
            if userLocation.location.horizontalAccuracy < 100.0 {
                
                addlo
            }
        }
    }
    func addLocation(location: CLLocation?) {
        
        let success = 
    }

}



























