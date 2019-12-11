//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by Pablo Formoso Estrada on 11/12/2019.
//  Copyright © 2019 FormoSil. All rights reserved.
//

import XCTest
@testable import StringCalculator

class StringCalculatorTests: XCTestCase {
    
    func testReturnZoreIfTheInputIsEmpty() {
        let result = add("")
        XCTAssertEqual(0, result)
    }
    
    func testReturnsTheNumberIsJustOne() {
        let result = add("1")
        XCTAssertEqual(1, result)
    }
    
    func testReturnsTheNumbersAreMoreThanOne() {
        let result = add("1,2")
        XCTAssertEqual(3, result)
    }
    
    private func add(_ number: String) -> Int {
        return 0
    }

}
