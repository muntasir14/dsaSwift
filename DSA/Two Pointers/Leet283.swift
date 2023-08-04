//
//  Leet283.swift
//  DSA
//
//  Created by Muntasir on 7/28/23.
//

import Foundation

class Leet283 {
    
    func moveZeroes(_ nums: inout [Int]) {
        let len = nums.count
        var zeroes = 0
        var i = 0
        
        while i + zeroes < len {
            if nums[i] == 0 {
                nums.remove(at: i)
                zeroes += 1
            } else {
                i += 1
            }
        }
        nums += Array(repeating: 0, count: zeroes)
    }
}
