//
//  Leet399.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/29/23.
//

import Foundation

// Evaluate Division
class Leet399 {
    
    func calcEquation(equations: [[String]], values: [Double], queries: [[String]]) -> [Double] {
        var relations: [String : [(div:String, val:Double)]] = [:]
        var result = Array(repeating: -1.0, count: queries.count)
        
        for (i, equation) in equations.enumerated() {
            relations[equation[0], default: []].append((div: equation[1], val: values[i]))
            relations[equation[1], default: []].append((div: equation[0], val: (1 / values[i])))
        }
        
        var visited: [String : Bool] = [:]
        func dfs(current: String, key: String) -> (val: Double, found: Bool) {
            
            if visited[current] != nil { return (val: 1.0, found: false)}
            if current == key { return (val: 1.0, found: true)}
            visited[current] = true
            let list = relations[current]!
            var result = 1.0
            for item in list {
                result = 1.0
                let res = dfs(current: item.div, key: key)
                if res.found {
                    result *= item.val * res.val
                    return (val: result, found: true)
                } else {
                    result = -1.0
                }
            }
            
            return (val: result, found: false)
        }
        
        for (i, query) in queries.enumerated() {
            // x / y
            let xList = relations[query[0]]
            let yList = relations[query[1]]
            if xList == nil || yList == nil { continue }
            visited = [:]
            let res = dfs(current: query[0], key: query[1])
            result[i] = res.val
        }
        
        return result
    }
}
