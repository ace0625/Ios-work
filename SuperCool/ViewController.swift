//
//  ViewController.swift
//  SuperCool
//
//  Created by hyunchan kim on 12/17/15.
//  Copyright © 2015 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changefirst(sender: AnyObject) {
        logo.hidden = false
        bg.hidden = false
        button.hidden = true
    }

}

