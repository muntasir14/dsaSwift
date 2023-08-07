//
//  Leet1207.swift
//  DSA
//
//  Created by Muntasir on 8/6/23.
//

import Foundation


// Unique Number Occurrences
class Leet1207 {
    
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        
        var occurrences: [Int: Int] = [:]
        
        for num in arr {
            occurrences[num, default: 0] += 1
        }
        
        var tempArr: [Int] = []
        
        for item in occurrences {
            if tempArr.contains(item.value) {
                return false
            }
            tempArr.append(item.value)
        }
        return true
    }
}
