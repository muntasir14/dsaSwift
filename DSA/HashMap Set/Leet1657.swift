//
//  Leet1657.swift
//  DSA
//
//  Created by Muntasir on 8/7/23.
//

import Foundation

// Determine if two strings are closed
class Leet1657 {
    
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        
        var dict1: [Character: Int] = [:]
        var dict2: [Character: Int] = [:]
        
        for char in word1 {
            dict1[char, default: 0] += 1
        }
        
        for char in word2 {
            dict2[char, default: 0] += 1
        }
        
        let arr1 = dict1.values
        var arr2: [Int] = [Int](dict2.values)
        
        if dict1.keys != dict2.keys { return false }
        
        for num in arr1 {
            let index = arr2.firstIndex(of: num)
            if index == nil { return false}
            arr2.remove(at: index!)
        }
        
        return arr2.isEmpty
    }
}
