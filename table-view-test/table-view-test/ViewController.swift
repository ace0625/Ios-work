//
//  ViewController.swift
//  table-view-test
//
//  Created by Dan Hyunchan Kim on 3/8/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    //var arr = [String]()
    var arr = ["http://zoarchurch.co.uk/content/pages/uploaded_images/91.png", "https://pbs.twimg.com/profile_images/675002642196729857/A0OpcJpA.png", "http://images5.fanpop.com/image/photos/28000000/randomised-random-28065165-1024-819.jpg", "http://caffaknitted.typepad.com/.a/6a00e54f8f86dc883401287636e5db970c-800wi", "http://orig08.deviantart.net/cd7d/f/2011/092/a/d/random_orange_by_kaylaeber-d3d0ule.jpg"]
    
    var arrTitle = ["Title1", "Title2", "Title3", "Title4", "Title5"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        if let cell = tableView.dequeueReusableCellWithIdentifier("cell")
            as? Cell{
                
                var img: UIImage!
                
                let url = NSURL(string: arr[indexPath.row])!
                if let data = NSData(contentsOfURL: url)
                {
                    img = UIImage(data: data)
                }
                else
                {
                    img = UIImage(named: "image1")
                }
                cell.configureCell(img, text: arrTitle[indexPath.row])
                
                return cell
        }else{
            return Cell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr.count
    }



}

