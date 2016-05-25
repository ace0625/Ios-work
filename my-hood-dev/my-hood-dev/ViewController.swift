//
//  ViewController.swift
//  my-hood-dev
//
//  Created by Dan Hyunchan Kim on 3/14/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var tableview: UITableView!
    
    //var posts = [Post]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
//        let post = Post(imagePath: "", title: "post 1", postDesc: "post 1 desc")
//        let post2 = Post(imagePath: "", title: "post 2", postDesc: "post 2 desc")
//        let post3 = Post(imagePath: "", title: "post 3", postDesc: "post 3ß desc")
//        
//        posts.append(post)
//        posts.append(post2)
//        posts.append(post3)
//        
//        tableview.reloadData()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "onPostsLoaded", name: "postsLoaded", object: nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let post = DataService.instance.loadedPosts[indexPath.row]
            //posts[indexPath.row]
        if let cell = tableview.dequeueReusableCellWithIdentifier("PostCell") as? PostCell
        {
            cell.configureCell(post)
            return cell
        }
        else
        {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 88.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return DataService.instance.loadedPosts.count
//        return posts.count
    }
    
    func onPostsLoaded(notif: AnyObject)
    {
        tableview.reloadData()
    }



}

