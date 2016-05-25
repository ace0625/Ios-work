//
//  PersonCell.swift
//  MissingPerson
//
//  Created by Dan Hyunchan Kim on 5/20/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class PersonCell: UICollectionViewCell {
    
    @IBOutlet weak var personImg: UIImageView!
    
    var person: Person!
    
    func configureCell(person: Person)
    {
        if let url = NSURL(string: "\(baseURL)\(person.personImgUrl!)")
        {
            self.person = person
            downloadImage(url)
        }
       // downloadImage(NSURL(string: imgUrl)!)
    }
    
    func downloadImage(url: NSURL)
    {
        getDataFromUrl(url) { (data, response, error) in
            dispatch_async(dispatch_get_main_queue()) { () -> Void in
                guard let data = data where error == nil else { return }
                self.personImg.image = UIImage(data: data)
                self.person.personImg = self.personImg.image
                self.person.downloadFaceId()
            }
        }
    }
    
    func getDataFromUrl(url: NSURL, completion: ((data: NSData?, response: NSURLResponse?, error: NSError?) -> Void))
    {
        NSURLSession.sharedSession().dataTaskWithURL(url)
        {
            (data, response, error) in
            completion(data: data, response: response, error: error) //completion handler
            
        }.resume()
    }
    
    func setSelected()
    {
        //personImg.clipsToBounds = false
        personImg.layer.borderWidth = 2.0
        personImg.layer.borderColor = UIColor.yellowColor().CGColor
        
        self.person.downloadFaceId()
    }
}
