//
//  Leet450.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/22/23.
//

import Foundation

// Delete Node in a BST
class Leet450 {
    
    func findMin(_ node: TreeNode) -> TreeNode? {
        if node.left == nil { return node }
        return findMin(node.left!)
    }
    
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        
        guard root != nil else { return root }
        var newRoot = root
        if newRoot!.val > key { newRoot!.left = deleteNode(newRoot!.left, key)}
        else if newRoot!.val < key { newRoot!.right = deleteNode(newRoot!.right, key)}
        
        else {
            
            if newRoot!.left == nil && newRoot!.right == nil {
                newRoot = nil
            } else if newRoot!.left == nil {
                newRoot = newRoot!.right
            } else if newRoot!.right == nil {
                newRoot = newRoot!.left
            } else {
                
                var temp = findMin(newRoot!.right!)
                newRoot!.val = temp!.val
                newRoot!.right = deleteNode(newRoot!.right, temp!.val)
            }
            
        }
        
        return newRoot
    }
}
