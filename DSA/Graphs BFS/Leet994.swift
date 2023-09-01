//
//  Leet994.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 9/1/23.
//

import Foundation

class Leet994 {
    
    func orangesRotting(_ grid: [[Int]]) -> Int {
        
        let ROW = grid.count
        let COL = grid[0].count
        var rLocations: [[Int]] = []
        var rResults: [Int] = []
        var (i, j) = (0, 0)
        var fCount = 0
        var visited: Set<[Int]> = []
        var queue: [[Int]] = []
        var step = 0
        let dirs = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        
        while i < ROW {
            j = 0
            while j < COL {
                if grid[i][j] == 2 { print("i, j", i, j); rLocations.append([i, j]);}
                else if grid[i][j] == 1 { fCount += 1 }
                j += 1
            }
            i += 1
        }
        if rLocations.isEmpty { return -1 }
        
        for rLocation in rLocations {
            queue.append(rLocation)
            step = 0
            
            while !queue.isEmpty {
                print(queue)
                let item = queue.popLast()!
                if visited.contains(item) { continue }
                if grid[item[0]][item[1]] != 0 {
                    visited.insert(item)
                    if grid[item[0]][item[1]] == 1 {
                        fCount -= 1
                        print("fCount", fCount)
                    }
                }
                
                for dir in dirs {
                    let i = item[0] + dir.0
                    let j = item[1] + dir.1
                    
                    if i >= 0 && i < ROW && j >= 0 && j < COL && grid[i][j] == 1 {
                        queue.append([i, j])
                    }
                }
                step += 1
                
            }
            rResults.append(step)
        }
        
        print("rResults", rResults)
        return (fCount == 0 ? rResults.max()! : -1)
        
    }
}
