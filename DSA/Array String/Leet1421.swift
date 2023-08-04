//
//  Leet1421.swift
//  DSA
//
//  Created by Muntasir on 7/21/23.
//

import Foundation

// Kids With the Greatest Number of Candies
class Leet1421 {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result = Array(repeating: false, count: candies.count)
        let prevMax = candies.max()!
        var i = 0

        while i < candies.count {
            if candies[i] + extraCandies >= prevMax {
                result[i] = true
            }
            i += 1
        }
        return result
    }
}
