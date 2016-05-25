//: Playground - noun: a place where people can play

import UIKit

class Vehicle
{
    private var engine = "4 cylinder"
    private var color = "silver"
    private var odometer = 0
    
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

var srx = Vehicle(engine: "6 cylinder", color: "Blue")

var volvo = Vehicle()

print(srx.color)
print(volvo.color)

//In array of a class, you can append objects
var vehicles = [Vehicle]()
vehicles.append(volvo)
vehicles.append(srx)


print(srx.odometer)
srx.enterMiles(14000)
print(srx.odometer)