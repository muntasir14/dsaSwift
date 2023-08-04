//
//  Leet643.swift
//  DSA
//
//  Created by Muntasir on 8/1/23.
//

import Foundation

// Maximum average subarray
class Leet643 {
    
    func calculateAverage(_ nums: [Int], startIndex: Int, endIndex: Int) -> Double {
        
        var sum = 0
        var i = startIndex
        
        while i <= endIndex {
            sum += nums[i]
            i += 1
        }
        
        return Double(sum) / Double(endIndex - startIndex + 1)
    }
    
    
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        if nums.count <= k {
            return calculateAverage(nums, startIndex: 0, endIndex: nums.count - 1)
        }
        
        
        var i = 0
        var j = k - 1
        var prevAvg = calculateAverage(nums, startIndex: i, endIndex: j)
        var maxAverage = prevAvg
        i += 1
        j += 1
        while j < nums.count {
            let avg = (prevAvg * Double(k) - Double(nums[i-1]) + Double(nums[j])) / Double(k)
            if avg > maxAverage {
                maxAverage = avg
            }
            prevAvg = avg
            i += 1
            j += 1
        }
        
        return maxAverage
    }
}
