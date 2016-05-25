//
//  ViewController.swift
//  class-test
//
//  Created by Dan Hyunchan Kim on 12/29/15.
//  Copyright © 2015 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        var bmw = Vehicle()
//        bmw.enterMiles(10000)
        
        print(bmw.odometer)
        bmw.odometer = 600
        print(bmw.odometer)
    }
}

