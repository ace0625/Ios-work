//
//  ViewController.swift
//  rpgoop
//
//  Created by Dan Hyunchan Kim on 1/3/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHP: UILabel!
    
    @IBOutlet weak var enemyHP: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Dirty Laundry", hp: 110, attackPwr: 20)
        generateRandomEnemy()
        
        playerHP.text = "\(player.hp) HP"
        
    }
    
    func generateRandomEnemy()
    {
        let rand = Int(arc4random_uniform(2))
        if rand == 0
        {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        }
        else
        {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
        }
        enemyImg.hidden = false
    }

    @IBAction func onChestTapped(sender: AnyObject)
    {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)

    }
    
  
    @IBAction func attackTapped(sender: AnyObject)
    {
        if enemy.attemptAttack(player.attackPwr)
        {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHP.text = "\(enemy.hp) HP"
        }
        else
        {
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot()
        {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        if !enemy.isAlive
        {
            enemyHP.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
    }


}

