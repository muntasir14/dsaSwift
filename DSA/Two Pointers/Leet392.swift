//
//  Leet392.swift
//  DSA
//
//  Created by Muntasir on 7/29/23.
//

import Foundation

// Is Subsequence
class Leet392 {
    
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        
        let sArray = Array(s)
        let tArray = Array(t)
        
        var i = 0
        var j = 0
        
        while i < sArray.count && j < tArray.count {
            if sArray[i] == tArray[j] {
                i += 1
                j += 1
            } else {
                j += 1
            }
        }
        
        if i == sArray.count {
            return true
        }
        
        return false
    }
}
