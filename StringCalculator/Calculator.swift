//
//  Calculator.swift
//  StringCalculator
//
//  Created by Pablo Formoso Estrada on 11/12/2019.
//  Copyright © 2019 FormoSil. All rights reserved.
//

import Foundation

class Calculator {
    var input_string: String
    
    init(stringToCalculate: String) {
        input_string = stringToCalculate
    }

    
    func add() -> Int {
        // Data pereparation
        let intArray = input_string.components(separatedBy: ",").map { Int($0) }
        
        //Operational
        var sum = 0
        
        for value in intArray {
            sum += value!
        }
        
        return sum
    }
}
