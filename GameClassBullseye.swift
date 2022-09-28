//
//  Game.swift
//  Bullseye
//
//  Created by Mac on 6/24/22.
//

import Foundation

struct Game {
    //original static values
    var target: Int = (Int.random(in: 1...100))
    var score: Int = 0
    var round: Int = 1
    
    
    func points(sliderValue: Int) -> Int {
        
        return 100 - abs(target - sliderValue)
        
    }
    
    //if-else statement examples to calculate points. Ari and I did the more concise way up top
    
    //var = variable (can change)
    //let = constant (can't change)
}
