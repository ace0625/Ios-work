//
//  ViewController.swift
//  scrollview
//
//  Created by Dan Hyunchan Kim on 3/14/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    
    let WIDTH: CGFloat = 240
    let HEIGHT: CGFloat = 430
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for var x = 1; x <= 5; x++
        {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollview.addSubview(imgView)
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 320, WIDTH, HEIGHT)
                                        //move the size of the image frame
        }
        
        scrollview.contentSize = CGSizeMake(WIDTH * 5, scrollview.frame.size.height)
    }

   


}

