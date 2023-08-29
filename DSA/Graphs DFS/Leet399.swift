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
        //var visited = Array(repeating: false, count: relations.keys.count)
        func dfs(current: String, key: String, prev: String) -> (val: Double, found: Bool) {
            let list = relations[current]
            var result = 1.0
            var outCome = (val: 1.0, found: false)
            for item in list! {
                if item.div == key { return (item.val, true) }
                if item.div == prev { continue }
//                print("current", current, "item", item)
                outCome = dfs(current: item.div, key: key, prev: current)
                result *= (outCome.found ? item.val : 1.0) * outCome.val
            }
            return (result, outCome.found)
        }
        
        for (i, query) in queries.enumerated() {
            // x / y
            let xList = relations[query[0]]
            let yList = relations[query[1]]
            if xList == nil || yList == nil { continue }
            let res = dfs(current: query[0], key: query[1], prev: "")
            result[i] = res.found ? res.val : -1.0
//            print("query", query, "res", res, terminator: "\n\n\n")
        }
        
        return result
    }
}
