//
//  ViewController.swift
//  segues
//
//  Created by Dan Hyunchan Kim on 3/2/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonpressed(sender: AnyObject!)
    {
        performSegueWithIdentifier("gotoblue", sender: nil)
    }


}

