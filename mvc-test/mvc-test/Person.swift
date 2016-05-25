//
//  Person.swift
//  mvc-test
//
//  Created by Dan Hyunchan Kim on 3/1/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import Foundation


class Person
{
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String{
        set{
            _firstName = newValue
        }
        get{
            return _firstName
        }
        
    }
    var lastName: String{
        return _lastName
    }
    
    init(first: String, last: String)
    {
        self._firstName = first
        self._lastName = last
    }
    
    var fullName: String{
        return "\(_firstName) \(_lastName)"
    }
    
}