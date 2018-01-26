//
//  Map.swift
//  splash
//
//  Created by Thomas Millet on 26/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import Foundation
import SpriteKit

enum Color: Int {
    case unknow = 0, red, blue, yellow, white
}

class Map {
    var column: Int
    var row: Int
    let color: Color
    var sprite: SKSpriteNode?

    init(column: Int, row: Int, color: Color ) {
        self.column = column
        self.row = row
        self.color = color
    }
}
