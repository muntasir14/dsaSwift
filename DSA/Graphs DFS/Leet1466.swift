//
//  Leet1466.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/25/23.
//

import Foundation

// Reorder Routes to Make All Paths Lead to the City Zero
class Leet1466 {
    
    func minReorder(_ n: Int, _ connections: [[Int]]) -> Int {
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
        var stateList = Array(repeating: false, count: n)
        var count = 0
        for item in connections {
            matrix[item[0]][item[1]] = 1
        }
        
        return 0
    }
}
