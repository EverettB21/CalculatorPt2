//
//  Equation.swift
//  Calculator - Lab
//
//  Created by Everett Brothers on 9/6/23.
//

import Foundation

struct Equation {
    var first: Double
    var second: Double
    var type: String
    var total: Double = 0.0
    
    mutating func solve() {
        switch type {
        case "divide":
            total = first / second
        case "multiply":
            total = first * second
        case "subtract":
            total = first - second
        case "add":
            total = first + second
        default:
            total = 0
        }
    }
}
