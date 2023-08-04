//
//  Leet151.swift
//  DSA
//
//  Created by Muntasir on 7/23/23.
//

import Foundation

// Reverse words in a string
class Leet151 {
    
    func reverseWords(_ s: String) -> String {
        let arr = s.split(separator: " ")
        var str = ""
        var i = arr.count - 1
        while i >= 0 {
            str += String(arr[i] + " ")
            i -= 1
        }
        str.removeLast()
        return str
    }
}
