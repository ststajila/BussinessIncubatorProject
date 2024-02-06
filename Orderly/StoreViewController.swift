//
//  StoreViewController.swift
//  Orderly
//
//  Created by STANISLAV STAJILA on 2/5/24.
//

import UIKit
import MapKit

class StoreViewController: UIViewController, CLLocationManagerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var storePicker: UIPickerView!
    var storeNames = ["Walmart", "Aldi", "JewelOsco"]
    var pickedStore = ""
    
    @IBOutlet weak var mapViewOutlet: MKMapView!
    let locationManager = CLLocationManager()
    var currentLocation = CLLocation(latitude: 42.2411, longitude: -88.316978)
    var stores: [MKMapItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storePicker.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        mapViewOutlet.showsUserLocation = true
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
    }
    
    func search(value: String){
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = "Walmart"
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
        
        let search = MKLocalSearch(request: request)
        
        search.start { (response, error) in
            guard let response = response
                    else{
                        return
                    }
            for mapItem in response.mapItems{
                self.stores.append(mapItem)
                let annotation = MKPointAnnotation()
                annotation.coordinate = mapItem.placemark.coordinate
                annotation.title = mapItem.name
                self.mapViewOutlet.addAnnotation(annotation)
            }
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return storeNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
}
