//
//  Leet2215.swift
//  DSA
//
//  Created by Muntasir on 8/6/23.
//

import Foundation


// Find the Difference of Two Arrays
class Leet2215 {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var answer: [[Int]] = Array(repeating: [], count: 2)
        var nums1: Set<Int> = Set(nums1)
        var nums2: Set<Int> = Set(nums2)
        
        for num in nums1 {
            if !nums2.contains(num) {
                answer[0].append(num)
            }
        }
        
        for num in nums2 {
            if !nums1.contains(num) {
                answer[1].append(num)
            }
        }
        
        return answer
    }
}

