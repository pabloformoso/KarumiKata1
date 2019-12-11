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
    
    func testReturnsTheNumberWithNumberPerLine() {
        let result = add("1\n2\n3")
        XCTAssertEqual(6, result)
    }
    
    private func add(_ number: String) -> Int {
        if number.isEmpty { return 0 }
        
        let separators = CharacterSet(charactersIn: "\n,,")
        
        // Data pereparation
        let intArray = number.components(separatedBy: separators).map { Int($0) }
        
        //Operational
        var sum = 0
        
        for value in intArray {
            sum += value!
        }
        
        return sum
    }

}
