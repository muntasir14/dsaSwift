//
//  Leet1372.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/19/23.
//

import Foundation


class Leet1372 {
    
    var maxNum = 0
    
    func dfs(_ root: TreeNode?, _ isLeft: Bool, _ num: Int) {
        
        guard root != nil else {
            return
        }
        maxNum = num > maxNum ? num : maxNum
        if isLeft {
            dfs(root?.right, false, num + 1)
            dfs(root?.right, false, 1)
        } else {
            
            dfs(root?.left, true, num + 1)
            dfs(root?.left, true, 1)
        }
    }
    
    func longestZigZag(_ root: TreeNode?) -> Int {
        
        dfs(root?.left, true, 1)
        dfs(root?.right, false, 1)
        
        return maxNum
    }
}
