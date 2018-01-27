//
//  Level.swift
//  splash
//
//  Created by Thomas Millet on 27/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import Foundation

let NumColumn = 4
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
                if(row == 3 && column == 1) {
                    color = Color.red
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

