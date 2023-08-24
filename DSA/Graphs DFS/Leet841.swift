//
//  Leet841.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/24/23.
//

import Foundation



// keys and rooms
class Leet841 {
    
    
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        let size = rooms.count
        var statuses = Array(repeating: false, count: size)
        
        func dfs(node: Int) {
            if statuses[node] { return }
            statuses[node] = true
            for room in rooms[node] {
                dfs(node: room)
            }
        }
        dfs(node: 0)
        
        for status in statuses {
            if status == false { return false }
        }
        return true
    }
}
