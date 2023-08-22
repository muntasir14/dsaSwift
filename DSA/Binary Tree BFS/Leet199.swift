//
//  Leet199.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/21/23.
//

import Foundation


class Leet199 {
    
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard root != nil else { return [] }
        
        var arr: [Int] = []
        
        var temp = root
        var queue: [(TreeNode, Int)] = [(temp!, 0)]
        var coveredLevel = -1
        
        while !queue.isEmpty {
            let tup = queue.popLast()
            if tup!.1 > coveredLevel {
                arr.append(tup!.0.val)
                coveredLevel = tup!.1
            }
            if tup!.0.left != nil {
                queue.append((tup!.0.left!, tup!.1 + 1))
            }
            if tup!.0.right != nil {
                queue.append((tup!.0.right!, tup!.1 + 1))
            }
        }
        
        return arr
    }
}
