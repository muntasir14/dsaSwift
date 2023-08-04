//
//  Leet1004.swift
//  DSA
//
//  Created by Muntasir on 8/3/23.
//

import Foundation

// Max Consecutive Ones III
class Leet1004 {
    
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        if k >= nums.count {return nums.count}
        var k = k
        var max = Int.min
        
        var i = 0
        var j = 0
        
        var val = 0
        while j < nums.count {
            
            if nums[j] == 0 && k > 0 {
                if j == nums.count - 1 {
                    val = j - i + 1
                    if val > max {
                        max = val
                    }
                }
                j += 1
                k -= 1
            } else if k == 0 && nums[j] == 0 {
                val = j - i
                if val > max {
                    max = val
                }
                while nums[i] == 1 { i += 1 }
                if nums[i] == 0 {
                    k += 1
                    i += 1
                }
            } else if nums[j] == 1 {
                
                if j == nums.count - 1 {
                    val = j - i + 1
                    if val > max {
                        max = val
                    }
                }
                j += 1
            }
            
            
        }
        
        return max
    }
}
