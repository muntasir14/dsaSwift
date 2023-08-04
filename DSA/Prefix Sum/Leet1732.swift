//
//  Leet1732.swift
//  DSA
//
//  Created by Muntasir on 8/3/23.
//

import Foundation


// Find the highest altitude

class Leet1732 {
    
    func largestAltitude(_ gain: [Int]) -> Int {
        var max = 0
        var sum = 0

        for num in gain {
            sum += num
            if sum > max {
                max = sum
            }
            print("sum", sum)
        }

        return max
    }
    
//    func largestAltitude(_ gain: [Int]) -> Int {
//        
//        var prefixSum = Array(repeating: 0, count: gain.count + 1)
//        var max = 0
//        
//        for i in 0..<gain.count {
//            let value = prefixSum[i] + gain[i]
//            prefixSum[i+1] = prefixSum[i] + gain[i]
//            if value > max { max = value }
//        }
//        return max
//    }
    
//    func largestAltitude(_ gain: [Int]) -> Int {
//            var max = gain[0]
//            var sum = 0
//            for num in gain {
//                sum += num
//                if sum > max {
//                    max = sum
//                }
//                print("sum", sum)
//            }
//            if max < 0 {return 0}
//            return max
//        }
}
