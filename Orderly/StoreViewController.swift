//
//  StoreViewController.swift
//  Orderly
//
//  Created by STANISLAV STAJILA on 2/5/24.
//

import UIKit
import MapKit

class StoreViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapViewOutlet: MKMapView!
    let locationManager = CLLocationManager()
    let currentLocation = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        mapViewOutlet.showsUserLocation = true
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let center = locationManager.location!.coordinate
        let region = MKCoordinateRegion(center: center, span: span)
        
        mapViewOutlet.setRegion(region, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
