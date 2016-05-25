//
//  AddPostVC.swift
//  my-hood-dev
//
//  Created by Dan Hyunchan Kim on 3/25/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
        
        imagePicker = UIImagePickerController() //initialize
        imagePicker.delegate = self
    }
    
    @IBAction func addPicBtnPressed(sender: UIButton!)
    {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    @IBAction func makePostBtnPressed(sender: AnyObject)
    {
        if let title = titleField.text, let desc = descField.text, let img = postImg.image
        {
            let post  = Post(imagePath: "", title: title, postDesc: desc)
            DataService.instance.addPost(post)
        }
    }

    @IBAction func cancelBtnPressed(sender: AnyObject)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }
}
