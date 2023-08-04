//
//  Leet443.swift
//  DSA
//
//  Created by Muntasir on 7/25/23.
//

import Foundation

// String Compression

class Leet443 {
    
    func getDigitArray(num: Int, chars: inout [Character]) {
        
        if num / 10 == 0 {
            chars.append(Character(String(num)))
            return
        }
        
        let num = num
        let val = num % 10
        getDigitArray(num: num / 10, chars: &chars)
        chars.append(Character(String(val)))
    }
    
    func compress(_ chars: inout [Character]) -> Int {
        
        var characters: [Character] = []
        var repeatations: [Int] = []
        var prevChar = Character("\0")
        
        var j = -1
        for i in 0..<chars.count {
            
            if chars[i] != prevChar {
                repeatations.append(1)
                characters.append(chars[i])
                j += 1
            } else {
                repeatations[j] += 1
            }
            prevChar = chars[i]
        }
        chars = []
        for i in 0..<characters.count {
            chars.append(characters[i])
            var digits = [Character]()
//            getDigitArray(num: repeatations[i], chars: &digits)
            digits = Array(String(repeatations[i]))
            if !(digits.count == 1 && digits[0] == "1") {
                chars += digits
            }
        }
        return chars.count
    }
}
