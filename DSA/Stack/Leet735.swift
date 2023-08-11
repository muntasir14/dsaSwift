//
//  Leet735.swift
//  DSA
//
//  Created by Muntasir on 8/9/23.
//

import Foundation


// Asteroid Collision

class Leet735 {
    
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        asteroids.reduce(into: []) { stack, a in
            print(stack)
            if stack.isEmpty {
                stack.append(a)
            } else if stack.last! >= 0 && a < 0 && stack.last! < abs(a) {
                while !stack.isEmpty && stack.last! > 0 && stack.last! < abs(a) {
                    stack.removeLast()
                }
                if !stack.isEmpty && stack.last! > 0 && stack.last! == abs(a) {
                    stack.removeLast()
                } else if stack.isEmpty || stack.last! < 0  {
                    stack.append(a)
                }
            } else if stack.last! >= 0 && a < 0 && stack.last! == abs(a) {
                stack.removeLast()
            } else if stack.last! >= 0 && a < 0 && stack.last! >= abs(a) {
                
            } else {
                stack.append(a)
            }
        }
    }
}
