//
//  ViewController.swift
//  no-storyboards
//
//  Created by Dan Hyunchan Kim on 3/5/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    var secondvc: SecondVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName:  nibNameOrNil, bundle: nibBundleOrNil)
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goToNext(sender: AnyObject) {
        
        secondvc = SecondVC(printMe: "hihi")
        //secondvc = SecondVC(nibName: "SecondVC", bundle: nil)
        self.presentViewController(secondvc, animated: true, completion: nil)
        
    }

}

