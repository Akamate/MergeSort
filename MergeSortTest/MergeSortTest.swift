//
//  MergeSortTest.swift
//  MergeSortTest
//
//  Created by Aukmate  Chayapiwat on 18/9/2563 BE.
//

import XCTest

class SourceGenerator {
    
    
    static func generate(capacity: Int = 10000) -> [Int] {
        
        var sourcex = NSMutableArray(capacity: capacity)
        for i in 0..<capacity {
            sourcex[i] = Int.random(in: 0...100000)
        }

        return sourcex as! [Int]
    }
    
    
}
