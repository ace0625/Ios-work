//
//  Recipe+CoreDataProperties.swift
//  recipez
//
//  Created by Dan Hyunchan Kim on 4/12/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Recipe {

    @NSManaged var image: NSData?
    @NSManaged var ingredients: String?
    @NSManaged var steps: String?
    @NSManaged var title: String?

}
