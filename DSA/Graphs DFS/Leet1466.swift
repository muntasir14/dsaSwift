//
//  Leet1466.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/25/23.
//

import Foundation

// Reorder Routes to Make All Paths Lead to the City Zero
// edge list is given, done by converting it to adjacency matrix
// memory limit exceeds with adjacency matrix
// need to try with adjacency list
class Leet1466 {
    // with adjaceency matrix
    //    func minReorder(_ n: Int, _ connections: [[Int]]) -> Int {
    //        var matrix = Array(repeating: Array(repeating: false, count: n), count: n)
    //        var stateList = Array(repeating: false, count: n)
    //        var count = 0
    //        for item in connections {
    //            matrix[item[0]][item[1]] = true
    //        }
    //
    //
    //        func dfs(_ city: Int, from: Int?) {
    //            if stateList[city] { return }
    //
    //            if matrix[city][0] {
    //                stateList[city] = true
    //                return
    //            }
    //            if matrix[0][city] {
    //                matrix[0][city] = false
    //                matrix[city][0] = true
    //                count += 1
    //                stateList[city] = true
    //                return
    //            }
    //
    //            var i = 0
    //            while i < n {
    //                if stateList[i] == true && matrix[i][city]{
    //                    matrix[i][city] = false
    //                    matrix[city][i] = true
    //                    count += 1
    //                    stateList[city] = true
    //                    return
    //                }
    //                i += 1
    //            }
    //
    //            i = 0
    //            while i < n {
    //                if matrix[city][i] {
    //                    dfs(i, from: city)
    //                    stateList[city] = true
    //                    return
    //                }
    //                i += 1
    //            }
    //
    //            i = 0
    //            while i < n {
    //                if matrix[i][city] && from != i {
    //                    matrix[i][city] = false
    //                    matrix[city][i] = true
    //                    count += 1
    //                    dfs(i, from: city)
    //                    stateList[city] = true
    //                    return
    //                }
    //                i += 1
    //            }
    //        }
    //
    //        for city in 1..<n {
    //            dfs(city, from: nil)
    //        }
    //
    //        return count
    //    }
    
    
    // with adjacency list memory error as well
    //    func minReorder(_ n: Int, _ connections: [[Int]]) -> Int
    //{
    //        var adList = Array(repeating: Array<Int>(), count: n)
    //        var stateList = Array(repeating: false, count: n)
    //        var count = 0
    //        for item in connections {
    //            adList[item[0]].append(item[1])
    //        }
    //
    //
    //        func dfs(_ city: Int, from: Int?) {
    //            if stateList[city] { return }
    //
    //            // check if city has direct road to 0
    //            if adList[city].contains(0) {
    //                stateList[city] = true
    //                return
    //            }
    //
    //            //
    //            if adList[0].contains(city) {
    //                adList[0].remove(at: adList[0].firstIndex(of: city)!)
    //                adList[city].append(0)
    //                count += 1
    //                stateList[city] = true
    //                return
    //            }
    //
    //            var i = 0
    //            while i < n {
    //                if stateList[i] == true && adList[i].contains(city){
    //
    //                    adList[i].remove(at: adList[i].firstIndex(of: city)!)
    //                    adList[city].append(i)
    //                    count += 1
    //                    stateList[city] = true
    //                    return
    //                } else if from != i && adList[i].contains(city) {
    //                    adList[i].remove(at: adList[i].firstIndex(of: city)!)
    //                    adList[city].append(i)
    //                    count += 1
    //                    dfs(i, from: city)
    //                    stateList[city] = true
    //                    return
    //                }
    //                i += 1
    //            }
    //
    //            for c in adList[city] {
    //                dfs(c, from: city)
    //                stateList[city] = true
    //                return
    //            }
    //
    ////            i = 0
    ////            while i < n {
    ////                if adList[i].contains(city) && from != i {
    ////                    adList[i].remove(at: adList[i].firstIndex(of: city)!)
    ////                    adList[city].append(i)
    ////                    count += 1
    ////                    dfs(i, from: city)
    ////                    stateList[city] = true
    ////                    return
    ////                }
    ////                i += 1
    ////            }
    //        }
    //
    //        for city in 1..<n {
    //            dfs(city, from: nil)
    //        }
    //
    //        return count
    //    }
    typealias Road = (city: Int, direct: Bool)
    func minReorder(_ n: Int, _ connections: [[Int]]) -> Int {
        
        var roads = [Int: [Road]]()
        var visited: Set<Int> = []
        
        for connection in connections {
            roads[connection[0], default: []].append((city: connection[1], direct: true))
            roads[connection[1], default: []].append((city: connection[0], direct: false))
        }
        
        return traverse(roads: roads, city: 0, visited: &visited)
    }
    
    func traverse(roads: [Int: [Road]], city: Int, visited: inout Set<Int>) -> Int {
        visited.insert(city)
        
//        defer {
//            visited.remove(city)
//        }
        
        var result = 0
        for connection in roads[city]! {
            guard !visited.contains(connection.city) else { continue }
            result += (connection.direct ? 1 : 0) + traverse(roads: roads, city: connection.city, visited: &visited)
        }
        
        return result
    }
    
}
