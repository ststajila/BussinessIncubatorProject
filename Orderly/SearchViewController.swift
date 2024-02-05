//
//  SearchViewController.swift
//  Orderly
//
//  Created by STANISLAV STAJILA on 10/17/23.
//

import UIKit
import MapKit

class MapController3: UIViewController, CLLocationManagerDelegate {

    
    let locationManager = CLLocationManager()
    //let currentLocation = CLLocation!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
    }

}
