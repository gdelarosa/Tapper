//
//  ViewController.swift
//  Tapper
//
//  Created by Gina De La Rosa on 11/7/15.
//  Copyright © 2015 Gina De La Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables/Properties 
    var maxTaps = 0
    var currentTaps = 0
    
    // Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    //Action
    @IBAction func onCoinTapped(sender: UIButton!){ // What happens when coin is tapped
        currentTaps++ //Add one
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    
    }
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
       
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImage.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }
    
    func restartGame() { 
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImage.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLabel.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLbl() {
    tapsLabel.text = "\(currentTaps)Taps"
    }
}

