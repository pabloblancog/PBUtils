//
//  PBUtilsTests.swift
//  PBUtilsTests
//
//  Created by Pablo Blanco González on 10/04/2020.
//  Copyright © 2020 PabloBlanco. All rights reserved.
//

import XCTest
@testable import PBUtils

class PBUtilsTests: XCTestCase {

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
    
    func test_localFile() {
        XCTAssertNil(LocalFilesUtils.readLocalJSONFile(name: "Invalid Json file name8"))
    }

}