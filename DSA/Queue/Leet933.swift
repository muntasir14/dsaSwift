//
//  Leet933.swift
//  DSA
//
//  Created by Muntasir on 8/11/23.
//

import Foundation


class Leet933 {
    
    var queue: [Int]
    
    init() {
        queue = [Int]()
    }
    
    func ping(_ t: Int) -> Int {
        if queue.isEmpty {queue.append(t); return 1}
        while !queue.isEmpty && (queue.first! < (t - 3000) ||  queue.first! > t) {
            queue.removeFirst()
        }
        queue.append(t)
        return queue.count
    }
}
