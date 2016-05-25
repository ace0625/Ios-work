//
//  DevelWizard.swift
//  rpgoop
//
//  Created by Dan Hyunchan Kim on 1/3/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import Foundation

class DevilWizard: Enemy
{
    let IMMUNE_MAX = 15
    
    override var loot: [String]
        {
            return ["Magic Wand", "Dark Amulet", "Salted Porl"]
    }
    
    override var type: String
        {
            return "Devil Wizard"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX
        {
            return super.attemptAttack(attackPwr)
        }
        else
        {
            return false
        }
    }
}