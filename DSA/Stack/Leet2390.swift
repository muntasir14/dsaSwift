//
//  Leet2390.swift
//  DSA
//
//  Created by Muntasir on 8/8/23.
//

import Foundation


class Leet2390 {
    
    class Node {
        let char: Character?
        var next: Node?
        
        init(char: Character? = nil, next: Node? = nil) {
            self.char = char
            self.next = next
        }
        
    }
    
    struct Stack {
        
        private var head: Node?
        
        init() {}
        
        mutating func push(char: Character) {
            if head?.char == nil {
                head = Node(char: char)
                return
            }
            let temp = Node(char: char, next: head)
            self.head = temp
        }
        
        mutating func pop() -> Character? {
            let temp = head
            head = head?.next
            return temp?.char
        }
        
        func getHead() -> Node? {
            return head
        }
        
        func printStack() {
            var temp = head
            while temp != nil {
                print(temp!.char!)
                temp = temp?.next
            }
        }
    }
    
//    func removeStars(_ s: String) -> String {
//
//        var stack = Stack()
//        var counter = 0
//
//        for c in s {
//            if c == "*" {
//                counter += 1
//            }
//            stack.push(char: c)
//        }
//        let size = s.count - counter * 2
//        var j = size - 1
//        var arr: [Character] = Array(repeating: " ", count: size)
//        counter = 0
//
//        while j >= 0 {
//            while counter != 0 {
//                let c = stack.pop()
//                if c == "*" { counter += 1 }
//                else { counter -= 1 }
//            }
//
//            let c = stack.pop()
//            if c == "*" { counter += 1 }
//            else { arr[j] = c!; j -= 1 }
//        }
//
//        return String(arr)
//
//    }
    
//    func removeStars(_ s: String) -> String {
//        let res = s.reduce(into: "") { stack, ch in
//            print("stack", stack, "ch", ch)
//            if ch == "*" {
//                stack.removeLast()
//            } else {
//                stack.append(ch)
//            }
//        }
//        print("s", s, "res", res)
//        return res
//    }
    
    
    func removeStars(_ s: String) -> String {
        var res = ""
        
        for ch in s {
            if ch == "*" {
                res.removeLast()
            } else {
                res.append(ch)
            }
        }
        
        return res
    }
}
