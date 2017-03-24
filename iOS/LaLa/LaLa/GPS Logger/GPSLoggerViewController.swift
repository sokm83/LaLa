//
//  GPSLoggerViewController.swift
//  LaLa
//
//  Created by Su-gil Lee on 2017. 3. 23..
//  Copyright © 2017년 Sokm83. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class GPSLoggerViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    
    var locationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.distanceFilter = 20.0
        locationManager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coordinate = manager.location?.coordinate {
            NSLog("didUpdateLocations latitude : \(String(coordinate.latitude))  longitude : \(String(coordinate.longitude))")
            let regionRadius: CLLocationDistance = 1000
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(coordinate, regionRadius, regionRadius)
            self.map.setRegion(coordinateRegion, animated: true)
            
            let point = MKPointAnnotation()
            point.coordinate = coordinate
            self.map.addAnnotation(point)
        }
    }
    
}
