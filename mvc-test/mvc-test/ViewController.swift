//
//  ViewController.swift
//  mvc-test
//
//  Created by Dan Hyunchan Kim on 3/1/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var renameField: UITextField!
    let person = Person(first: "Hyunchan", last: "Kim")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    //    let person = Person(first: "Hyunchan", last: "Kim")
      //  fullName.text = "\(person.firstName) \(person.lastName)"
        
        fullName.text = person.fullName
        
//        foodImg.layer.cornerRadius = 5.0
//        foodImg.clipsToBounds = true
        
        
    }

    @IBAction func renamePressed(sender: AnyObject)
    {
        if let newName = renameField.text
        {
            person.firstName = newName
            fullName.text = person.fullName 
        }
    }

}

