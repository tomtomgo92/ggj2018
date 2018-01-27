//
//  Level.swift
//  splash
//
//  Created by Thomas Millet on 27/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import Foundation
import SpriteKit

let NumColumn = 6
let NumRows = 6

class Level {
    fileprivate var maps = Array2D<Map>(columns: NumColumn, rows: NumRows)
    
    func mapAt(column: Int, row: Int) -> Map? {
        assert(column >= 0 && column < NumColumn)
        assert(row >= 0 && row < NumRows)
        return maps[column, row]
    }
    
    func shuffle() -> Set<Map> {
        return createInitialMap()
    }
    
    private func createInitialMap() -> Set<Map> {
    var set = Set<Map>()
        var color = Color.blue
        
        for row in 0..<NumColumn {
            for column in 0..<NumRows {
                if(row == 0 && column == 0) {
                    color = Color.ball
                }
                else if((row == 5 && column == 1) || (row == 3 && column == 1) || (row == 3 && column == 3) || (row == 1 && column == 5) || (row == 2 && column == 4) || (row == 1 && column == 2))
                {
                    color = Color.red
                }
                else if((row == 4 && column == 4) || (row == 3 && column == 0)) {
                    color = Color.yellow
                }
                else {
                    color = Color.blue
                }
                let map = Map(column: column, row: row, color: color)
                maps[column, row] = map
                print(maps)
                set.insert(map)
            }
        }
        return set
    }
}

