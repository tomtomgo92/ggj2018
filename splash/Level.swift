//
//  Level.swift
//  splash
//
//  Created by Thomas Millet on 27/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import Foundation
import SpriteKit

let NumColumn: Int = 9
let NumRows: Int = 9

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
      
            // 1
            for row in 0..<NumRows {
                for column in 0..<NumColumn {
                    
                    // 2
                    var color = Color.random()
                    
                    // 3
                    let map = Map(column: column, row: row, color: color)
                    maps[column, row] = map
                    
                    // 4
                    set.insert(map)
                }
            }
            return set
        }
    private var tiles = Array2D<Tile>(columns: NumColumn, rows: NumRows)
    
    func tileAt(column: Int, row: Int) -> Tile? {
        assert(column >= 0 && column < NumColumn)
        assert(row >= 0 && row < NumRows)
        return tiles[column, row]
    }
    
    init(filename: String) {
        // 1
        guard let dictionary = Dictionary<String, AnyObject>.loadJSONFromBundle(filename: filename) else { return }
        // 2
        guard let tilesArray = dictionary["tiles"] as? [[Int]] else { return }
        // 3
        for (row, rowArray) in tilesArray.enumerated() {
            // 4
            let tileRow = NumRows - row - 1
            // 5
            for (column, value) in rowArray.enumerated() {
                if value == 1 {
                    tiles[column, tileRow] = Tile()
                }
            }
        }
        
        
    }
//       var bal = Ball.Posit(yPos: 0, xPos: 3)
//        for row in 0..<NumColumn {
//            for column in 0..<NumRows {
//                if(row == bal.xPos && column == bal.yPos ) {
//                    color = Color.ball
//                }
//                else if((row == 5 && column == 1) || (row == 3 && column == 1) || (row == 3 && column == 3) || (row == 1 && column == 5) || (row == 2 && column == 4) || (row == 1 && column == 2))
//                {
//                    color = Color.red
//                }
//                else if((row == 4 && column == 4) || (row == 3 && column == 0)) {
//                    color = Color.yellow
//                }
//                else {
//                    color = Color.voids
//                }
//                let map = Map(column: column, row: row, color: color)
//                maps[column, row] = map
//                print(maps)
//                set.insert(map)
//            }
//        }
//
//        return set
//    }
}

