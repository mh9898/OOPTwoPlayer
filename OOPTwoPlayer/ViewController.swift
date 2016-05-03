//
//  ViewController.swift
//  OOPTwoPlayer
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player : Player!
    var enemy : Enemy!
    
    @IBOutlet weak var playerHP: UILabel!
    
    @IBOutlet weak var enemyHP: UILabel!
    
    @IBOutlet weak var outputLbl: UILabel!
    
    @IBOutlet weak var playerButtOutlet: UIButton!
    
    @IBOutlet weak var enemyButtOutlet: UIButton!
    
    @IBAction func enemyAction(sender: AnyObject) {
        
        player.attack(enemy.attackPower)
        outputLbl.text = "\(enemy.name) \(enemy.hp) vs \(player.hp) \(player.name)"
        
        if !player.isAlive{
            outputLbl.text = "\(player.name) is dead"
        }
        
        hidePlayerbutt()
    }
    
    func hidePlayerbutt(){
        enemyButtOutlet.hidden = true
        
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "showPlayerbutt", userInfo: nil, repeats: false)
    }
    
    func showPlayerbutt(){
        enemyButtOutlet.hidden = false
    }

   
    @IBAction func playerAction(sender: AnyObject) {
 
        enemy.attack(player.attackPower)
        //outputLbl.text = "\(player.name) attack \(enemy.name)"
        outputLbl.text = "\(enemy.name) \(enemy.hp) VS \(player.hp) \(player.name)"
        
        if !enemy.isAlive{
            outputLbl.text = "\(enemy.name) is dead"
        }
        
        hideEnemybutt()
        
    }
   
    
    func hideEnemybutt(){
        enemyButtOutlet.hidden = true
        
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "showEnemybutt", userInfo: nil, repeats: false)
        

    }
    
    func showEnemybutt(){
        enemyButtOutlet.hidden = false
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        enemyButtOutlet.hidden = false
        
        player = Player(name: "Wrior", hp: 110, attackPower: 20)
        enemy = Enemy(name: "Enemy X", hp: 80, attckPower: 10)
        
        outputLbl.text = "\(enemy.hp) vs \(player.hp)"
        
        playerHP.text = player.name
        enemyHP.text = enemy.name

    }

    

}

