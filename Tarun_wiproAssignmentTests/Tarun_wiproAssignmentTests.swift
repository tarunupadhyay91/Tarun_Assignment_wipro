//
//  Tarun_wiproAssignmentTests.swift
//  Tarun_wiproAssignmentTests
//
//  Created by Tarun Upadhyay on 28/01/20.
//  Copyright © 2020 Tarun Upadhyay. All rights reserved.
//

import XCTest
@testable import Tarun_wiproAssignment

class Tarun_wiproAssignmentTests: XCTestCase {
   
    func testDecoding() throws {
        /// When the Data initializer is throwing an error, the test will fail.
        let jsonData =  try? JSONSerialization.data(withJSONObject:jsonObj)

        /// The `XCTAssertNoThrow` can be used to get extra context about the throw
        XCTAssertNoThrow(try JSONDecoder().decode(dataModel.self, from: jsonData!))
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
