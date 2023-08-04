//
//  Leet1493.swift
//  DSA
//
//  Created by Muntasir on 8/3/23.
//

import Foundation


class Leet1493 {
    func longestSubarray(_ nums: [Int]) -> Int {
        
        var k = 1
        var max = 0
        
        var i = 0
        var j = 0
        
        var val = 0
        while j < nums.count {
            
            if nums[j] == 0 && k > 0 {
                if j == nums.count - 1 {
                    val = j - i
                
                    if val > max {
                        max = val
                    }
                }
                j += 1
                k = 0
            } else if k == 0 && nums[j] == 0 {
                val = j - i - 1
                if val > max {
                    max = val
                }
                while nums[i] == 1 { i += 1 }
                if nums[i] == 0 {
                    k = 1
                    i += 1
                }
            } else if nums[j] == 1 {
                
                if j == nums.count - 1 {
                    val = j - i + 1
                    if k == 0 {
                        val -= 1
                    }
                    if val > max {
                        max = val
                    }
                }
                j += 1
            }
        }
        
        if max == nums.count {
            return max - 1
        }
        
        return max
    }
}
