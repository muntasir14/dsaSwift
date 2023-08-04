//
//  Leet334.swift
//  DSA
//
//  Created by Muntasir on 7/23/23.
//

import Foundation


class Leet334 {
    
    // this solution doesn't work for [20, 100, 10, 12, 5, 13]
//    func increasingTriplet(_ nums: [Int]) -> Bool {
//
//        var maxes = Array(repeating: 0, count: nums.count)
//        var maxNum = nums[0]
//        var maxCount = 1
//        maxes[0] = nums[0]
//
//
//        for i in 1..<nums.count {
//            if nums[i] > maxes[i-1] {
//                maxes[i] = nums[i]
//            } else {
//                maxes[i] = maxes[i-1]
//            }
//        }
//
//        for i in 1..<nums.count {
//            if maxNum != maxes[i] {
//                maxCount += 1
//                maxNum = maxes[i]
//            }
//        }
//
//        return maxCount >= 3
//
//    }
    
//    var add = 0
//    // worked for 73/79 cases
//    func findMaxes(_ nums: inout [Int], i: Int) -> (low: Int, high: Int) {
//        var i = i
//        if i == nums.count {
//            return (Int.min, Int.min)
//        }
//
//        var low = nums[i]
//        var high = nums[i]
//        i += 1
//        while i < nums.count {
//
//            if nums[i] < low {
//                low = nums[i]
//            }
//            else if nums[i] > high {
//                high = nums[i]
//            }
//            if nums[i] > low {
//
//                let val = findMaxes(&nums, i: i+1)
//                if val.high > nums[i] {
//                    add += 2
//                    high = val.high
//                } else if val.low > low && val.high > val.low {
//                    add += 2
//                } else if val.high > low || val.low > low {
//                    add += 1
//                }
//                break
//            }
//            i += 1
//        }
//
//
//
//        return (low, high)
//    }
//
//
//    func increasingTriplet(_ nums: [Int]) -> Bool {
//
//        var nums = nums
//        if nums.count == 1 {
//            return false
//        }
//        let _ = findMaxes(&nums, i: 0)
//        return add >= 2
//    }
    
    
    func increasingTriplet(_ nums: [Int]) -> Bool {
        
        guard nums.count >= 3 else {
            return false
        }
        
        var (small, mid) = (Int.max, Int.max)
        
        for n in nums {
            if n <= small { small = n } else
            if n <= mid { mid = n } else
            if n > mid {return true}
        }
        
        return false
    }
    
}
