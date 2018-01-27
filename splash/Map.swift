//
//  Map.swift
//  splash
//
//  Created by Thomas Millet on 26/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import Foundation
import SpriteKit

enum Color: Int, CustomStringConvertible {
    case unknow = 0, red, blue, yellow, white, voids
    
    var spriteName: String {
        let spriteNames = [
            "red",
            "blue",
            "yellow",
            "white",
            "voids"
        ]
        
        return spriteNames[rawValue - 1]
    }
    var description: String {
        return spriteName
    }
        
    var highlightedSpriteName: String{
        return spriteName + "-Highlighted"
    }
}

class Map: CustomStringConvertible, Hashable {
    var description: String {
        return "type:\(color) square:(\(column),\(row))"
    }
    var column: Int
    var row: Int
    let color: Color
    var sprite: SKSpriteNode?
    var hashValue: Int {
        return row*10 + column
    }

    init(column: Int, row: Int, color: Color ) {
        self.column = column
        self.row = row
        self.color = color
    }
    
}
func ==(lhs: Map, rhs: Map) -> Bool {
    return lhs.column == rhs.column && lhs.row == rhs.row
}

