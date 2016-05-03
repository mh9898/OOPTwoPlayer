//
//  Player.swift
//  OOPTwoPlayer
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name : String = "Warrior"
    
    var name: String{
        return _name
    }
    
    convenience init(name: String, hp: Int, attackPower: Int){
        self.init(hp: hp, attckPower: attackPower)
        _name = name
    }
    
    
    
}
