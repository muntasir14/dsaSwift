//
//  Leet724.swift
//  DSA
//
//  Created by Muntasir on 8/4/23.
//

import Foundation


// Find Pivot Index

class Leet724 {
    
    func pivotIndex(_ nums: [Int]) -> Int {
            
        if nums.count == 1 {
            return 0
        } else if nums.count == 2 {
            if nums[0] == 0 {
                return 1
            }
            if nums[1] == 0 {
                return 0
            }
            return -1
        }
        
        var rightSums = Array(repeating: 0, count: nums.count)
        
        var sum = 0
        for i in (0..<nums.count).reversed() {
            sum += nums[i]
            rightSums[i] = sum
        }
        
        sum = 0
        for i in (0..<nums.count) {
            sum += nums[i]
            if sum == rightSums[i] {
                return i
            }
        }
        
        return -1
    }
}
