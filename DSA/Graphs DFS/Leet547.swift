//
//  Leet547.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/25/23.
//

import Foundation


class Leet547 {
    
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        let numberOfCities = isConnected.count
        var cities = Array(repeating: false, count: numberOfCities)
        var count = 0
        
        func dfs(city: Int) {
            if cities[city] { return }
            cities[city] = true
            print(cities)
            for (index, connection) in isConnected[city].enumerated() {
                if (connection == 1) && (index != city) {
                    dfs(city: index)
                }
            }
        }
        
        var i = 0
        
        while i < numberOfCities {
            if !cities[i] {
                count += 1
                dfs(city: i)
            }
            i += 1
        }

        return count
    }
        
}
