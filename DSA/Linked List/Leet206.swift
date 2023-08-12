//
//  Leet206.swift
//  DSA
//
//  Created by Muntasir on 8/12/23.
//

import Foundation


class Leet206 {
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var (t1, t2) = (head, head?.next)
        
        while t2 != nil {
            let t3 = t2
            t2 = t2?.next
            t3?.next = t1
            t1 = t3
        }
        
        head?.next = nil
        
        return t1
    }
}
