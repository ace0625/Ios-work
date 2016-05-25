//
//  Person.swift
//  MissingPerson
//
//  Created by Dan Hyunchan Kim on 5/20/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit
import ProjectOxfordFace

class Person
{
    var faceId: String?
    var personImg: UIImage?
    var personImgUrl: String?
    
    init(personImgUrl: String)
    {
        self.personImgUrl = personImgUrl
    }
    
    func downloadFaceId()
    {
        if let img = personImg, let imgData = UIImageJPEGRepresentation(img, 0.8)
        {
            FaceService.instance.client.detectWithData(imgData, returnFaceId: true, returnFaceLandmarks: false, returnFaceAttributes: nil, completionBlock: { (faces: [MPOFace]!, error: NSError!) in
            
                if error == nil
                {
                    var faceId: String?
                    for face in faces
                    {
                        faceId = face.faceId
                        print("Face Id : \(faceId)")
                        break
                    }
                    self.faceId = faceId
                }
                
            })
        }
    }
}