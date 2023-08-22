//
//  Leet1161.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/22/23.
//

import Foundation

// Maximum Level of Sum of a Binary Tree
class Leet1161 {
    
    func maxLevelSum(_ root: TreeNode?) -> Int {
        
        var max = Int.min
        var maxLevel = Int.min
        var level = 0
        var queue: [TreeNode] = [root!]
        
        while !queue.isEmpty {
            
            level += 1
            var sum = 0
            var tempQueue: [TreeNode] = []
            while !queue.isEmpty {
                let node = queue.popLast()
                sum += node!.val
                if node!.left != nil { tempQueue.append(node!.left!) }
                if node!.right != nil { tempQueue.append(node!.right!)}
            }
            queue = tempQueue
            if sum > max { max = sum; maxLevel = level}
            
        }
        
        return maxLevel
    }
}
