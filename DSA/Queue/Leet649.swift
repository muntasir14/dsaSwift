//
//  Leet649.swift
//  DSA
//
//  Created by Muntasir on 8/11/23.
//

import Foundation

// Dota2 Senate
class Leet649 {
    
//    func predictPartyVictory(_ senate: String) -> String {
//        var rQueue: [Int] = []
//        var dQueue: [Int] = []
//        let count = senate.count
//
//        for (index, char) in senate.enumerated() {
//            if char == "R" { rQueue.append(index) }
//            else { dQueue.append(index) }
//        }
//
//        while !rQueue.isEmpty && !dQueue.isEmpty {
//            let r = rQueue.removeFirst()
//            let d = dQueue.removeFirst()
//
//            if r < d {
//                rQueue.append(r + count)
//            } else {
//                dQueue.append(d + count)
//            }
//        }
//
//        return rQueue.isEmpty ? "Dire" : "Radiant"
//    }
//
    // this solution runs a lot faster with more memory usage
    func predictPartyVictory(_ senate: String) -> String {
            var rQueue = Array<Int>.SubSequence()
            var dQueue = Array<Int>.SubSequence()
            let count = senate.count

            for (index, char) in Array(senate).enumerated() {
                if char == "R" {
                    rQueue.append(index)
                } else {
                    dQueue.append(index)
                }
            }

            while !rQueue.isEmpty && !dQueue.isEmpty {
                let rFirst = rQueue.popFirst()
                let dFirst = dQueue.popFirst()

                if rFirst! < dFirst! {
                    rQueue.append(rFirst! + count)
                } else {
                    dQueue.append(dFirst! + count)
                }
            }

            return rQueue.isEmpty ? "Dire" : "Radiant"
        }
}
