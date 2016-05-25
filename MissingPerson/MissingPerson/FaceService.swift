//
//  FaceService.swift
//  MissingPerson
//
//  Created by Dan Hyunchan Kim on 5/20/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import Foundation
import ProjectOxfordFace

class FaceService
{
    static let instance = FaceService()
    
    let client = MPOFaceServiceClient(subscriptionKey: "7558c72e87064b8a831cbd2edb44c206")
}