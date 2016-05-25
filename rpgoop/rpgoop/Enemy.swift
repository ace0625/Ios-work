//
//  Enemy.swift
//  rpgoop
//
//  Created by Dan Hyunchan Kim on 1/3/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import Foundation

class Enemy: Character
{
    var loot: [String]
    {
        return ["Rusty Dagger", "Cracked Bucker"]
    }
    
    var type: String
    {
        return "Grunt"
    }
    
    func dropLoot() -> String?
    {
        if !isAlive
        {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}