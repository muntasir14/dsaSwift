//
//  Leet394.swift
//  DSA
//
//  Created by Muntasir on 8/10/23.
//

import Foundation


class Leet394 {
    
    func decodeString(_ s: String) -> String {
        
        var res = ""
        let arrString = Array(s)
        var i = 0
        
        while i < arrString.count {
            if var num = Int(String(arrString[i])) {
                var k = i + 1
                while arrString[k] != "[" { num *= 10; num += Int(String(arrString[k]))!; k += 1}
                var subStr = ""
                i = k + 1
                while true {
                    if let _ = Int(String(arrString[i])) {
                        var j = i
                        var balance = 1
                        while true {
                            if arrString[j] == "[" { balance += 1 }
                            else if arrString[j] == "]" {balance -= 1; if balance == 0 {break}}
                            j += 1
                        }
                        subStr += decodeString(String(arrString[i...j]))
                        i = j
                    }
                    if i >= arrString.count || arrString[i] == "]" {break}
                    else { subStr += String(arrString[i])}
                    i += 1
                }
                while num > 0 { res += subStr; num -= 1 }
            }
            if String(arrString[i]) != "]" {
                res += String(arrString[i])
            }
            
            i += 1
        }
        
        return res
    }
}
