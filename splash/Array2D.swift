//
//  Array2D.swift
//  splash
//
//  Created by Thomas Millet on 27/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import Foundation

struct Array2D<T> {
    let columns: Int
    let rows: Int
    fileprivate var array: Array<T?>
    
    init(columns:Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(repeating: nil, count: rows*columns) /* je sais pas comment ça marche */
        }
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[row*columns + column]
}
        set {
            array[row*columns + column] = newValue
        }
    }
}
