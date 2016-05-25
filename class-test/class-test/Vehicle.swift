//
//  Vehicle.swift
//  class-test
//
//  Created by Dan Hyunchan Kim on 12/29/15.
//  Copyright © 2015 hyunchan. All rights reserved.
//

import Foundation

class Vehicle
{
    private var engine = "4 cylinder"
    private var color = "silver"
    private var _odometer = 500
    
    
    //Setter / Getter
    var odometer: Int
        {
        get{
            return _odometer
        }
        set{
            if newValue > 500
            {
                _odometer = newValue
            }
        }
    }
    init(engine: String, color: String)
    {
        self.engine = engine
        self.color = color
    }
    init()
    {
        
    }
    func enterMiles(miles: Int)
    {
        odometer += miles
    }
}