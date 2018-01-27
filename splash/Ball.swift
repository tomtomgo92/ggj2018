//
//  File.swift
//  splash
//
//  Created by Thomas Millet on 27/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import Foundation
import SpriteKit

class Ball
{
    
    var tableau: Level!

    

    
    func oneLittleCircle(){
        
        let Circle = SKShapeNode(circleOfRadius: 50 ) // Size of Circle
        Circle.position = CGPoint(x: 0, y: 0)  // Center (given scene anchor point is 0.5 for x&y)
        Circle.strokeColor = SKColor.black
        Circle.glowWidth = 1.0
        Circle.fillColor = SKColor.orange
    }
    
    
}
