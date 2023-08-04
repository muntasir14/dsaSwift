//
//  Leet345.swift
//  DSA
//
//  Created by Muntasir on 7/22/23.
//

import Foundation

// Reverse Vowels of a String

class Leet345 {
    
    func reverseVowels(_ s: String) -> String {
        var arr = Array(s)
        let vowels = Array("AEIOUaeiou")
        var i = 0
        var j = s.count - 1
        
        while i <= j {
            
            if vowels.contains(arr[i]) && vowels.contains(arr[j]) {
                arr.swapAt(i, j)
                i += 1
                j -= 1
            } else {
                if !vowels.contains(arr[i]) {
                    i += 1
                }
                
                if !vowels.contains(arr[j]) {
                    j -= 1
                }
            }
            
            
            
            
        }
        
        return String(arr)
    }
}
