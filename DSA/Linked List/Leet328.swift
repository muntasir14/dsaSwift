//
//  Leet328.swift
//  DSA
//
//  Created by Muntasir on 8/12/23.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

// Odd Even Linked List
class Leet328 {
    
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        var t1 = head
        var (h2, t2) = (head?.next, head?.next)
        
        
        while t1?.next != nil && t2?.next != nil {
            
            t1?.next = t2?.next
            t1 = t1?.next
            t2?.next = t1?.next
            t2 = t2?.next
        }
        
        t1?.next = h2
        
        return head
    }
}
