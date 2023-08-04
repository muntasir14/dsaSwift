//
//  Leet11.swift
//  DSA
//
//  Created by Muntasir on 7/30/23.
//

import Foundation

class Leet11 {
    
    func calculateArea(i: Int, j: Int, x: Int, y: Int) -> Int {
        return (j - i) * min(x, y)
    }
    
    // solution with O(n^2)
//    func maxArea(_ height: [Int]) -> Int {
//        if height.count == 2 {
//            return calculateArea(i: 1, j: 0, x: height[0], y: height[1])
//        }
//
//        var i = 1
//        var highestIndex = 0
//        var maxWater = Int.min
//
//        while i < height.count {
//
//            var j = 0
//            var highest = Int.min
//            if height[highestIndex] < height[i] {
//                highestIndex = i
//            }
//            while j <= highestIndex {
//                let val = calculateArea(i: i, j: j, x: height[i], y: height[j])
//                if val > highest  {
//                    highest = val
//                }
//                j += 1
//            }
//            if highest > maxWater {
//                maxWater = highest
//            }
//            i += 1
//        }
//
//        return maxWater
//    }
    
    
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count - 1
        var max = Int.min
        
        while i < j {
            let val = calculateArea(i: i, j: j, x: height[i], y: height[j])
            if val > max {
                max = val
            }
            
            if height[i] < height[j] {
                i += 1
            } else {
                j -= 1
            }
        }
        
        return max
    }
}
