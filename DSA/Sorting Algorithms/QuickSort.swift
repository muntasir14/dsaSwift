//
//  QuickSort.swift
//  DSA
//
//  Created by Muntasir on 7/21/23.
//

import Foundation



func partition(input: inout [Int], low: Int, high: Int) -> Int {
    
    let pivot = input[high]
    var i = low - 1
    for j in low..<high {
        if input[j] <= pivot {
            i += 1
            input.swapAt(j, i)
        }
    }
    input.swapAt(i + 1, high)
    return i + 1
}

func quicksort(_ input: inout [Int], low: Int, high: Int) {
    // this is a copy of the input so its contents can be modified
    
    // check the base case: low is less than high
    
    // select the pivot
    
    // perform the partitioning step
    
    // make the recursive call with the new high and low values
    
    if low < high {
        let pivotIndex = partition(input: &input, low: low, high: high)
        
        quicksort(&input, low: low, high: pivotIndex - 1)
        quicksort(&input, low: pivotIndex + 1, high: high)
    }
}

// Test case
//var testArray = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14]
//quicksort(&testArray, low: 0, high: testArray.count - 1)
//print(testArray)

