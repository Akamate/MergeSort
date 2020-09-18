//
//  MergeSort0.swift
//  MergeSort
//
//  Created by Aukmate  Chayapiwat on 18/9/2563 BE.
//

import Foundation

class MergeSort {
    
    public static func sort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }

        let left = Array(array[0..<array.count / 2])
        let right = Array(array[array.count/2..<array.count])
        return merge(sort(left), sort(right))
    }
    
    private static func merge(_ arrayOne: [Int], _ arrayTwo: [Int]) -> [Int] {
        let left = arrayOne
        let right = arrayTwo
        var merged = Array(repeating: 0, count: left.count + right.count)

        var mergedIndex = 0
        var leftIndex = 0
        var rightIndex = 0
        
        while left.count > leftIndex && right.count > rightIndex {
            if left[leftIndex] < right[rightIndex] {
                merged[mergedIndex] = left[leftIndex]
                leftIndex += 1
                mergedIndex += 1
            } else {
                merged[mergedIndex] = right[rightIndex]
                rightIndex += 1
                mergedIndex += 1
            }
        }
        
        if left.count > leftIndex {
            let lastLeftIndex = left.count - 1
            let limit = lastLeftIndex - leftIndex
            for i in 0...limit {
                merged[mergedIndex] = left[leftIndex + i]
                mergedIndex += 1
            }
        }
        
        if right.count > rightIndex {
            let lastRightIndex = right.count - 1
            let limit = lastRightIndex - rightIndex
            for i in 0...limit {
                merged[mergedIndex] = right[rightIndex + i]
                mergedIndex += 1
            }
        }
        
        return merged
    }
}
