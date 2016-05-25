 //
//  BootcampAnnotation.swift
//  DevBootCamps
//
//  Created by Dan Hyunchan Kim on 5/10/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

 import Foundation
 import MapKit
 
class BootcampAnnotation: NSObject, MKAnnotation
{
    var coordinate = CLLocationCoordinate2D()
    
    init(coordinate: CLLocationCoordinate2D)
    {
        self.coordinate = coordinate
    }
 }