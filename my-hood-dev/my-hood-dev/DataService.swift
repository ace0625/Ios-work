//
//  DataService.swift
//  my-hood-dev
//
//  Created by Dan Hyunchan Kim on 3/26/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import Foundation
import UIKit

class DataService
{
    static let instance = DataService()
    private var _loadedPosts = [Post]()
    let KEY_POSTS = "posts"
    
    var loadedPosts: [Post]{
        return _loadedPosts
    }
    
    func savePosts()
    {
        let postsData = NSKeyedArchiver.archivedDataWithRootObject(_loadedPosts)
        NSUserDefaults.standardUserDefaults().setObject(postsData, forKey: KEY_POSTS)
    }
    func loadPosts()
    {
        if let postsData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_POSTS) as? NSData
        {
            if let postsArray = NSKeyedUnarchiver.unarchiveObjectWithData(postsData) as? [Posts]
            {
                _loadedPosts = postsArray
            }
        }
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "postsLoaded", object: nil)
        
    }
    func saveImageAndCreatePath(image: UIImage)
    {
        
    }
    func imageForPath(path: String)
    {
        
    }
    func addPost(post: Post)
    {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }

}