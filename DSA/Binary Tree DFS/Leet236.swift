//
//  Leet236.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/20/23.
//

import Foundation


class Leet236 {
    
    
    func dfs(_ node: TreeNode?, _ item: TreeNode?, _ ancestors: [TreeNode]) -> [TreeNode] {
        guard node != nil else { return [] }
        let val = node!.val
        
        let newArr = ancestors + [node!]
        if node!.val == item!.val {
            return newArr
        }
        let l = dfs(node!.left, item, newArr)
        let r = dfs(node!.right, item, newArr)
        
        return l.isEmpty ? r : l
    }
    
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        let arr1 = dfs(root, p, [])
        let arr2 = dfs(root, q, [])
        
        var temp: TreeNode?
        var i = 0
        while (i < arr1.count && i < arr2.count) && (arr1[i].val == arr2[i].val) {
            temp = arr1[i]
            i += 1
        }
        return temp
    }
}
