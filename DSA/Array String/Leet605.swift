//
//  Leet605.swift
//  DSA
//
//  Created by Muntasir on 7/22/23.
//

import Foundation

class Leet605 {
    
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        guard n > 0 else {
            return true
        }
        
        var (beds, pv, mv, cv) = (0, 1, 1, flowerbed[0])
        
        for i in 0..<flowerbed.count {
            pv = mv
            mv = cv
            cv = flowerbed[i]
            if (pv == 0 && mv == 0 && cv == 0) || (mv == 0 && cv == 0 && i == flowerbed.count - 1) {
                mv = 1
                beds += 1
            }
        }
        return beds >= n
    }
}
