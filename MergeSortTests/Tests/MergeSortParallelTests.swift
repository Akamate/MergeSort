//
//  MergeSortParallelTests.swift
//  MergeSortTest
//
//  Created by Aukmate  Chayapiwat on 18/9/2563 BE.
//

import XCTest

class MergeSortParallelTests: XCTestCase {
    
    var source: [Int] = []

    override func setUpWithError() throws {
        source = SourceGenerator.generate()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCorrectness() throws {
        let result = MergeSortParallel.sort(source, totalSize: source.count)
        _ = try result.reduce(nil) { (left, right) -> Int? in
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
            MergeSortParallel.sort(source, totalSize: source.count)
        }
    }

}

