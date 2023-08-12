//
//  Leet2095.swift
//  DSA
//
//  Created by Muntasir on 8/11/23.
//

import Foundation





class Leet2095 {
    
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        var temp = head
        var count = 0
        while temp != nil {temp = temp!.next; count += 1}
        
        if count == 2 {
            head?.next = head?.next?.next
            return head
        } else if count == 1 {
            return nil
        }
        
        let mid = count / 2
        
        var i = 0
        temp = head
        while i + 1 != mid {
            temp = temp!.next
            i += 1
        }
        let temp2 = temp!.next
        
        temp!.next = temp2!.next
        
        
        return head
    }
}
