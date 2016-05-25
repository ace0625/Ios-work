//
//  SecondViewController.swift
//  DevBootCamps
//
//  Created by Dan Hyunchan Kim on 5/10/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit
import MapKit

class LocationVC: UIViewController, UITableViewDelegate, UITableViewDataSource, MKMapViewDelegate
{
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var map: MKMapView!
    
    let locationManager = CLLocationManager()
    let regionRadius: CLLocationDistance = 1000
    
    let addresses = ["1955 SW 5th Ave Portland, OR, 97201",
                     "1988 NE 6th Ave Portland, OR, 97201"
                    ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        map.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        for add in addresses
        {
            getPlacemarkFromAddress(add)
        }
    }
    
    override func viewDidAppear(animated: Bool)
    {
        locationAuthStatus()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
         return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
    }
    
    func locationAuthStatus()
    {
        if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse
        {
            map.showsUserLocation = true
        }
        else
        {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func centerMapOnLocation(location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2, regionRadius * 2)
        map.setRegion(coordinateRegion, animated: true)
    }
    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
    {
        if let loc = userLocation.location
        {
            centerMapOnLocation(loc)
        }
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView?
    {
        if annotation.isKindOfClass(BootcampAnnotation)
        {
            let annoView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "Default")
            annoView.pinTintColor = UIColor.blackColor()
            annoView.animatesDrop = true
            return annoView
        }
        else if annotation.isKindOfClass(MKUserLocation)
        {
            return nil
        }
        return nil
    }
    
    func createAnnotaionForLocation(location: CLLocation)
    {
        let bootcamp = BootcampAnnotation(coordinate: location.coordinate)
        map.addAnnotation(bootcamp)
    }
    
    func getPlacemarkFromAddress(address: String)
    {
        CLGeocoder().geocodeAddressString(address)
        {
            (placemarks:[CLPlacemark]?, error:  NSError?) in
            if let marks = placemarks where marks.count > 0
            {
                if let loc = marks[0].location
                {
                    //we have a vaildate location with coordinates
                    self.createAnnotaionForLocation(loc)
                }
            }
        }
    }
}














