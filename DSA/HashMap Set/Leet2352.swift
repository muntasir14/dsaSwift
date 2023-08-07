//
//  Leet2352.swift
//  DSA
//
//  Created by Muntasir on 8/7/23.
//

import Foundation

// Equal Row and column Pairs

class Leet2352 {
    
    func equalPairs(_ grid: [[Int]]) -> Int {
        var dict: [[Int]: Int] = [:]
        var count = 0
        
        for arr in grid {
            dict[arr, default: 0] += 1
        }
        
        for i in 0..<grid.count {
            var arr: [Int] = []
            for j in 0..<grid.count {
                arr.append(grid[j][i])
            }
            if dict[arr] != nil {
                count += dict[arr]!
            }
        }
        
        return count
    }
}
