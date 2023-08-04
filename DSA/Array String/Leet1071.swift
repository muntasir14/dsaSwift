//
//  Leet1071.swift
//  DSA
//
//  Created by Muntasir on 7/21/23.
//

import Foundation

// Greatest Common Divisor of Strings
// if two strings has a gcd, str1 + str2 == str2 + str1
class Leet1071 {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        guard str1 + str2 == str2 + str1 else {
            return ""
        }
        let gcd = gcd(str1.count, str2.count)
        return String(str1.prefix(gcd))
    }

    func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 {
            return x
        } else {
            return gcd(y, x % y)
        }
    }
}
