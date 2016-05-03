//
//  Character.swift
//  OOPTwoPlayer
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    
    var hp: Int{
        return _hp
    }
    
    private var _attackPower : Int = 10
    
    var attackPower :Int{
        return _attackPower
    }
    
    var isAlive : Bool{
        if self._hp <= 0{
            return false
        }
        return true
        
    }
    
    init(hp: Int, attckPower: Int){
        self._hp = hp
        self._attackPower = attackPower
    }
    
    func attack(attackPower: Int) -> Bool{
       _hp -= attackPower
        
        return true
    }
    
    
}
