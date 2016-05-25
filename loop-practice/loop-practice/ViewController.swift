//
//  ViewController.swift
//  loop-practice
//
//  Created by hyunchan kim on 12/25/15.
//  Copyright © 2015 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLbl: UILabel!
    
    var phrases = ["Booting from floppy...\n", "Reading from disk...\n", "Updating Registry...\n",
        ".......\n", "..................\n", "........................\n", "Welcome, Dan. \n It is nice to see you"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        mainLbl.text = ""
//        for var x = 0; x < phrases.count; x++
//        {
//            var txt = mainLbl.text!
//            txt += phrases[x]
//            mainLbl.text = txt
//        }
        
//        var x = 0
//        repeat{
//            var txt = mainLbl.text!
//            txt += phrases[x]
//            mainLbl.text = txt
//            x++
//        } while x < phrases.count
        
        for phrase in phrases
        {
            var txt = mainLbl.text!
            txt += phrase
            mainLbl.text = txt
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

