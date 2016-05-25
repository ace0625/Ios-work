//
//  ViewController.swift
//  tapper-extreme
//
//  Created by hyunchan kim on 12/23/15.
//  Copyright © 2015 hyunchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!

    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
  
    
    @IBAction func onPlayBtnPressed(sender: UIButton)
    {
        if howManyTapsTxt.text != nil && howManyTapsTxt != ""
        {
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            

            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            //tapsLbl.text = "\(currentTaps) Taps"
            updateTapsLbl()
        }
        
    }
    
    @IBAction func onCoinTapped(sender: UIButton)
    {
        currentTaps++
         updateTapsLbl()
       // tapsLbl.text = "\(currentTaps) Taps"
        
        if isGameOver()
        {
            restartGame()
        }
    }
    
    func updateTapsLbl()
    {
         tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool
    {
        if currentTaps >= maxTaps
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func restartGame()
    {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }


}

