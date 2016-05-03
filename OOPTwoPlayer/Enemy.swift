//
//  Enemy.swift
//  OOPTwoPlayer
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    private var _name : String = "Enemy X"
    
    var name: String{
        return _name
    }
    
    convenience init(name: String, hp: Int, attckPower: Int) {
        self.init(hp: hp, attckPower: attckPower)
        _name = name
    }
}
