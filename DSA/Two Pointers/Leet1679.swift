//
//  Leet1679.swift
//  DSA
//
//  Created by Muntasir on 7/31/23.
//

import Foundation


// Max Number of k-sum pairs
class Leet1679 {
    
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        let sortedNums = nums.sorted()
        var i = 0
        var j = nums.count - 1
        var count = 0
        
        while i < j {
            let sum = sortedNums[i] + sortedNums[j]
            if sum == k {
                i += 1
                j -= 1
                count += 1
            } else {
                if sum >= k {
                    j -= 1
                } else if sum < k {
                    i += 1
                }
            }
        }
        
        return count
    }
}
