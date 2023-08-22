//
//  Leet450.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/22/23.
//

import Foundation

// Delete Node in a BST
class Leet450 {
    
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        guard var newRoot = root else { return nil }
        var temp = root
        while temp != nil {
            if temp!.val == key {
                
                if temp!.left == nil && temp!.right == nil { }
                
            }
            else if temp!.val < key { temp = temp!.right }
            else if temp!.val > key { temp = temp!.left }
        }
        
        return newRoot
    }
}
