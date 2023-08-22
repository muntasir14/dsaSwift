//
//  Leet437.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/18/23.
//

import Foundation


// Path Sum III
class Leet437 {
    
    
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> Int {
        var count = 0
        func calculateSum(_ node: TreeNode?, _ sum: Int) {
            if node == nil { return }
            var newSum = sum + node!.val
            if newSum == targetSum { count += 1 }
            calculateSum(node!.left, newSum)
            calculateSum(node!.right, newSum)
        }
        
        func traverse(_ node: TreeNode?) {
            if node == nil { return }
            calculateSum(node, 0)
            traverse(node?.left)
            traverse(node?.right)
        }
        
        traverse(root)
        return count
    }
}
