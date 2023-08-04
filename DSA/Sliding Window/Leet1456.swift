//
//  Leet1456.swift
//  DSA
//
//  Created by Muntasir on 8/2/23.
//

import Foundation

class Leet1456 {
    
    // accessing indexes in string is more expensive than array
//    func maxVowels(_ s: String, _ k: Int) -> Int {
//
//        let vowels = "aeiou"
//        var maxVowel = 0
//        var counter = 0
//        var i = 0
//        var j = k - 1
//
//        for n in i...j {
//            let index = s.index(s.startIndex, offsetBy: n)
//            if vowels.contains(s[index]) {
//                counter += 1
//            }
//        }
//
//        i += 1
//        j += 1
//        maxVowel = counter
//
//        while j < s.count {
//            let beforeiIndex = s.index(s.startIndex, offsetBy: i-1)
//            if vowels.contains(s[beforeiIndex]) {
//                counter -= 1
//            }
//
//            let jIndex = s.index(s.startIndex, offsetBy: j)
//            if vowels.contains(s[jIndex]) {
//                counter += 1
//            }
//
//            if counter > maxVowel {
//                maxVowel = counter
//            }
//            i += 1
//            j += 1
//        }
//
//        return maxVowel
//    }
    
    
    func maxVowels(_ s: String, _ k: Int) -> Int {
            
            let strArr = Array(s)
            let vowelsArr = ["a", "e", "i", "o", "u"]
            var maxVowel = 0
            var counter = 0
            var i = 0
            var j = k - 1
            
            for n in i...j {
                if vowelsArr.contains(String(strArr[n])) {
                    counter += 1
                }
            }
            
            i += 1
            j += 1
            maxVowel = counter
            
            while j < strArr.count {
                
                if vowelsArr.contains(String(strArr[i-1])) {
                    counter -= 1
                }
                
                if vowelsArr.contains(String(strArr[j])) {
                    counter += 1
                }
                
                if counter > maxVowel {
                    maxVowel = counter
                }
                i += 1
                j += 1
            }
            
            return maxVowel
        }
}
