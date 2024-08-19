//
//  Ex5.swift
//  persec2024-ios-dev-interview-Kritsanun-Wisessuk
//
//  Created by Kritsanun Wisessuk on 19/8/2567 BE.
//

import Foundation

//Ex 5
func sortNumber(_ numInput : Int) -> Int {
    let numString = String(abs(numInput))
    let number = Array(numString)
    let sortedNumber = number.sorted(by: >)
    let sortedString = String(sortedNumber)
    let result = Int(sortedString) ?? 0
    
    print("\(numInput) => \(result)")
    return result
}
