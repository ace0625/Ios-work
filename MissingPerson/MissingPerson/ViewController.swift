 //
//  ViewController.swift
//  MissingPerson
//
//  Created by Dan Hyunchan Kim on 5/20/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit
import ProjectOxfordFace

let baseURL = "http://localhost:6069/img/"

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var selectedImg: UIImageView!
    
    var selectedPerson: Person?
    var hasSelectedImage: Bool = false
    let imagePicker = UIImagePickerController()

 //   let missingPeople1 = ["person1.jpg", "person2.jpg", "person3.jpg", "person4.jpg", "person5.jpg", "person6.png"]
    
    let missingPeople = [
                         Person(personImgUrl: "person1.jpg"), Person(personImgUrl: "person2.jpg"),
                         Person(personImgUrl: "person3.jpg"), Person(personImgUrl: "person4.jpg"),
                         Person(personImgUrl: "person5.jpg"), Person(personImgUrl: "person6.png")
                        ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        imagePicker.delegate = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(loadPicker(_:)))
        tap.numberOfTapsRequired = 1
        selectedImg.addGestureRecognizer(tap)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return missingPeople.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        //return UICollectionViewCell()
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PersonCell", forIndexPath: indexPath) as! PersonCell
        
        let person = missingPeople[indexPath.row]
       // let url = "\(baseURL)\(missingPeople[indexPath.row])"
        cell.configureCell(person)
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        self.selectedPerson = missingPeople[indexPath.row]
        let cell = collectionView.cellForItemAtIndexPath(indexPath) as! PersonCell
        cell.configureCell(selectedPerson!)
        cell.setSelected()
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            selectedImg.image = pickedImage
            hasSelectedImage = true
        }
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func loadPicker(gesture: UITapGestureRecognizer)
    {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary //.Camera when using device but simulator
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func showErrorAlert()
    {
        let alert = UIAlertController(title: "Select Person and Image", message: "Please select a missing person to check and an image from your album", preferredStyle: UIAlertControllerStyle.Alert)
        
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(ok)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func checkMatch(sender: AnyObject)
    {
        if selectedPerson == nil || !hasSelectedImage
        {
           showErrorAlert()
        }
        else
        {
           if let myImg = selectedImg.image, let imgData = UIImageJPEGRepresentation(myImg, 0.8)
           {
            FaceService.instance.client.detectWithData(imgData, returnFaceId: true, returnFaceLandmarks: false, returnFaceAttributes: nil, completionBlock: { (faces: [MPOFace]!, error: NSError!) in
                
                if error == nil
                {
                    var faceId: String?
                    for face in faces
                    {
                        faceId = face.faceId
                        break
                    }
                    if faceId != nil
                    {
                        FaceService.instance.client.verifyWithFirstFaceId(self.selectedPerson!.faceId, faceId2: faceId, completionBlock: { (result: MPOVerifyResult!, err: NSError!) in
                            
                            if err == nil
                            {
                                print(result.confidence)
                                print(result.isIdentical)
                                print(result.debugDescription)
                            }
                            else
                            {
                                print(err.debugDescription)
                            }
                            
                            
                        })
                    }
                    
                }
                })
            }
        }
    }
}
 
 
 
 
 
 
 
 
 
 

