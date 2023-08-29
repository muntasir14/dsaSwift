//
//  Leet700.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/22/23.
//

import Foundation


// Search in a Binary Search Tree
class Leet700 {
    
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        var temp = root
        while temp != nil {
            if temp!.val == val { return temp }
            else if temp!.val < val { temp = temp!.right }
            else if temp!.val > val { temp = temp!.left }
        }
        
        return nil
    }
}
