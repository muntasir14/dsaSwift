//
//  Leet2130.swift
//  DSA
//
//  Created by Muntasir on 8/13/23.
//

import Foundation

// Maximum Twin Sum of a Linked List
class Leet2130 {
    // this solution uses an external array
    func pairSum(_ head: ListNode?) -> Int {
        var temp = head
        var n = 0
        while temp != nil {
            n += 1
            temp = temp!.next
        }
        temp = head
        var i = 0
        var arr: [Int] = Array(repeating: 0, count: n/2)
        while i < n {
            if i <= (n/2-1) {
                arr[i] += temp!.val
            } else {
                arr[n-1-i] += temp!.val
            }
            temp = temp?.next
            i += 1
        }
        
        return arr.max()!
    }
}
