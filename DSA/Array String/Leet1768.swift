//
//  Leet1768.swift
//  DSA
//
//  Created by Muntasir on 7/21/23.
//

import Foundation

// Merge Strings Alternately
class Leet1768 {

//    func mergeAlternately(_ word1: String, _ word2: String) -> String {
//        var resultStr = ""
//        var i = 0
//        var j = 0
//        var isWord1 = true
//
//        while word1.index(word1.startIndex, offsetBy: i) != word1.endIndex && word2.index(word2.startIndex, offsetBy: j) != word2.endIndex {
//
//            if isWord1 {
//                let index = word1.index(word1.startIndex, offsetBy: i)
//                resultStr += String(word1[index])
//                i += 1
//            } else {
//                let index = word2.index(word2.startIndex, offsetBy: j)
//                resultStr += String(word2[index])
//                j += 1
//            }
//            isWord1.toggle()
//        }
//
//        if isWord1 {
//            let startIndex = word1.index(word1.startIndex, offsetBy: i)
//            let endIndex = word1.endIndex
//            let range = startIndex..<endIndex
//            resultStr.append(contentsOf: word1[range])
//        } else {
//            let startIndex = word2.index(word2.startIndex, offsetBy: j)
//            let endIndex = word2.endIndex
//            let range = startIndex..<endIndex
//            resultStr.append(contentsOf: word2[range])
//        }
//
//        return resultStr
//    }
    
    // better solution, edit: easy to understand maybe but the runtime and space is larger
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        
        let maxLength = max(word1.count, word2.count)
        var result = ""
        
        for i in 0..<maxLength {
            if i < word1.count {
                let index = word1.index(word1.startIndex, offsetBy: i)
                result.append(word1[index])
            }
            if i < word2.count {
                let index = word2.index(word2.startIndex, offsetBy: i)
                result.append(word2[index])
            }
        }
        return result
    }
}




