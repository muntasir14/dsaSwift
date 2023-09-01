//
//  Leet1926.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/30/23.
//

import Foundation


class Coordinate: Hashable {
    static func == (lhs: Coordinate, rhs: Coordinate) -> Bool {
        if lhs.row == rhs.col && lhs.col == rhs.col {
            return true
        }
        return false
    }
    
    var row: Int
    var col: Int
    
    init(row: Int, col: Int) {
        self.row = row
        self.col = col
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.row)
        hasher.combine(self.col)
    }
}


// Nearest Exit from Entrance
class Leet1926 {
    
    
    // time exceeds for this solution
    //    func nearestExit(_ maze: [[Character]], _ entrance: [Int]) -> Int {
    //
    //        var queue: [(co: Coordinate, level: Int)] = []
    //        let m = maze.count
    //        let n = maze[0].count
    //        var count = Int.max
    //        var found = false
    //        var coordinate = Coordinate(row: entrance[0], col: entrance[1])
    //        var (i, j) = (entrance[0], entrance[1])
    //        var level = 0
    //        var visited = Set<Coordinate>()
    //
    //        repeat {
    //            visited.insert(coordinate)
    //
    //            if i < m - 1 && maze[i+1][j] == "." { queue.append((co: Coordinate(row: i + 1, col: j), level: level + 1))}
    //            if i > 0 && maze[i-1][j] == "." { queue.append((co: Coordinate(row: i - 1, col: j), level: level + 1)) }
    //
    //            if j < n - 1 && maze[i][j+1] == "." { queue.append((co: Coordinate(row: i, col: j + 1), level: level + 1)) }
    //            if j > 0 && maze[i][j - 1] == "." { queue.append((co: Coordinate(row: i, col: j - 1), level: level + 1)) }
    //
    ////            print(queue)
    //            repeat {
    //                (coordinate, level) = queue.popLast() ?? (Coordinate(row: -1, col: -1), 0)
    //            } while visited.contains(coordinate)
    //
    //
    //            (i, j) = (coordinate.row, coordinate.col)
    ////            print("i, j, level", i, j, level)
    //
    //            if (i == m - 1 || i == 0 || j == 0 || j == n - 1) && maze[i][j] == "." { found = true; count = level < count ?  level : count }
    //        } while (coordinate != Coordinate(row: -1, col: -1))
    //
    //
    //
    //        return found ? count : -1
    //    }
    
    
    func nearestExit(_ maze: [[Character]], _ entrance: [Int]) -> Int {
        
        let ROW = maze.count
        let COL = maze[0].count
        var queue: [(Int, Int, Int)] = [(entrance[0], entrance[1], 0)]
        var visited: Set<[Int]> = [[entrance[0], entrance[1]]]
        let dirs = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        
        
        while !queue.isEmpty {
            let (r, c, step) = queue.removeFirst()
            
            if [r, c] != entrance && ((r == ROW-1 || c == COL-1) || (r == 0 || c == 0)) && maze[r][c] == "." {
                return step
            }
            
            for (v, h) in dirs {
                let new_r = r + v
                let new_c = c + h
                if !visited.contains([new_r, new_c]) && new_r >= 0 && new_r < ROW && new_c >= 0 && new_c < COL && maze[new_r][new_c] == "." {
                    queue.append((new_r, new_c, step + 1))
                    visited.insert([new_r, new_c])
                }
            }
        }
        
        return -1
    }
}
