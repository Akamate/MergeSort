//
//  MergeSortTests.swift
//  MergeSort
//
//  Created by Aukmate  Chayapiwat on 18/9/2563 BE.
//

import XCTest

class MergeSortTests: XCTestCase {
    
    var source: [Int] = []

    override func setUpWithError() throws {
        source = SourceGenerator.generate()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCorrectness() throws {
        let result = MergeSort.sort(source)
        try result.reduce(nil) { (left, right) -> Int? in
            if let left = left {
                if left <= right {
                    return right
                }else{
                    throw SortIncorrectError()
                }
            }else{
                return right
            }
        }
    }
    
    func testPerformance() throws {
        self.measure {
            MergeSort.sort(source)
        }
    }
    
}
