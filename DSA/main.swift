//
//  main.swift
//  DSA
//
//  Created by Muntasir on 7/16/23.
//

import Foundation


//let leet1768 = Leet1768()
//
//print("case #1:", leet1768.mergeAlternately("abc", "pqr")) // should print apbqcr
//print("case #2:", leet1768.mergeAlternately("ab", "pqrs")) // should print apbqrs
//print("case #3:", leet1768.mergeAlternately("abcd", "pq")) // should print apbqcd


//let leet605 = Leet605()
//print(leet605.canPlaceFlowers([1, 0, 0, 1, 0, 0 , 0], 1))


//let leet345 = Leet345()
//print(leet345.reverseVowels("a."))

//let leet151 = Leet151()
//print(leet151.reverseWords("a good   example"))

//let leet238 = Leet238()
//print(leet238.productExceptSelf([1, 2, 3, 4]))


//let leet334 = Leet334()
//print(leet334.increasingTriplet([0,4,1,-1,2]))

//var chars = [Character]()
//chars = ["a","a","a","b","b","a","a"]
//let leet443 = Leet443()
//let val = leet443.compress(&chars)
//print(chars, val)


//var nums = [0, 1, 0, 3, 12]
//Leet283().moveZeroes(&nums)
//print(nums)


//print(Leet392().isSubsequence("axc", "ahbgdc"))


//print(Leet11().maxArea([1,8,6,2,5,4,8,3,7]))

//print(Leet1679().maxOperations([1,2,3,4], 5))


//print(Leet643().findMaxAverage([9,7,3,5,6,2,0,8,1,9], 6))


//print(Leet1456().maxVowels("asdfbasrwdaievhe", 3))


//print(Leet1004().longestOnes([1, 0, 0, 1, 1, 1, 0, 1], 2))



//print(Leet1493().longestSubarray([0,0,0]))

//print(Leet1732().largestAltitude([-4,-3,-2,-1,4,3,2]))


//print(Leet724().pivotIndex([-1,-1,0,0,-1,-1]))


//print(Leet2215().findDifference([1,2,3,3], [1,1,2,2]))

//print(Leet1207().uniqueOccurrences([1, 2, 2, 1, 1, 3]))


//print(Leet1657().closeStrings("uau", "ssx"))


//print(Leet2352().equalPairs([[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]]))


//print(Leet2390().removeStars("u*ensso****x*q"))

//print(Leet735().asteroidCollision([-2,2,1,-2]))

//print(Leet394().decodeString("3[z]2[2[y]pq4[2[jk]e1[f]]]ef"))

// [[],[642],[1849],[4921],[5936],[5957]]
//var recentCounter =  Leet933()
//print(recentCounter.ping(642))
//print(recentCounter.ping(1849))
//print(recentCounter.ping(4921))
//print(recentCounter.ping(5936))
//print(recentCounter.ping(5957))


//print(Leet649().predictPartyVictory("RDDRD"))
func printList(head: ListNode?) {
    var temp = head
    while temp != nil {
        print(temp!.val, terminator: " ")
        temp = temp?.next
    }
    print()
}
let arr = [1, 2]
let head = ListNode(1)
var temp: ListNode? = head
for i in 1..<arr.count {
    let l = ListNode(arr[i])
    temp!.next = l
    temp = temp!.next
}

//let _ = Leet2095().deleteMiddle(head)
//printList(head: head)

//let _ = Leet328().oddEvenList(nil)
//printList(head: head)


//printList(head: Leet206().reverseList(head))




//var node: TreeNode? = TreeNode(3, nil, nil)
//
//print(node!.val)
//testFunc(&node)
//print(node)



// Graphs

//print(Leet841().canVisitAllRooms([[1,3],[3,0,1],[2],[0]]))


//print(Leet547().findCircleNum([[1,1,0],[1,1,0],[0,0,1]]))


print(Leet1466().minReorder(6, [[0,1],[1,3],[2,3],[4,0],[4,5]]))
