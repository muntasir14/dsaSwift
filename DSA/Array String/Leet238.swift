//
//  Leet238.swift
//  DSA
//
//  Created by Muntasir on 7/23/23.
//

import Foundation


class Leet238 {
    
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var pref = Array(repeating: 1, count: nums.count)
        var suf = Array(repeating: 1, count: nums.count)
        var result = Array(repeating: 1, count: nums.count)
        
        
        for i in 1..<nums.count {
            pref[i] = pref[i-1] * nums[i-1]
        }
        
        for i in (0..<nums.count-1).reversed() {
            suf[i] = suf[i+1] * nums[i+1]
        }
        
        for i in 0..<nums.count {
            result[i] = pref[i] * suf[i]
        }
        
        return result
    }
}
