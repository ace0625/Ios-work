//
//  ViewController.swift
//  enum
//
//  Created by Dan Hyunchan Kim on 3/7/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theLbl: UILabel!
    
    enum Cars: Int
    {
        case BMW = 0
        case HONDA = 1
        case TESLA = 2
        case SUBARU = 3
    }
    
    var carChoice: Cars!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var car1 = Cars.BMW
//        var car2 = Cars.HONDA
//        
//        if car1.rawValue = car2.rawValue
//        {
//            
//        }
//        if car1 == car2
//        {
//            
//        }
//        carChoice = Cars.BMW
//        print(carChoice)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBtnPressed(sender: UIButton!)
    {
        if sender.tag == Cars.BMW.rawValue
        {
            theLbl.text = "BMW is here"
        }
        else if sender.tag == Cars.HONDA.rawValue
        {
            theLbl.text = "Honda is here"
        }
        else if sender.tag == Cars.TESLA.rawValue
        {
            theLbl.text = "Tesla is here"
        }
        else if sender.tag == Cars.SUBARU.rawValue
        {
            theLbl.text = "Subaru is here"
        }
        
    }

    
    
    
    
}

