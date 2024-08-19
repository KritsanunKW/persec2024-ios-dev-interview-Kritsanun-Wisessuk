//
//  Ex4.swift
//  persec2024-ios-dev-interview-Kritsanun-Wisessuk
//
//  Created by Kritsanun Wisessuk on 19/8/2567 BE.
//

import Foundation

//EX 4-1
func numberToRoman(_ num : Int) -> String {
    let dataList : [(Int, String)] = [
        (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
        (100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
        (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
    ]
    var result = ""
    var number = num
    
    for (value, symbol) in dataList {
        while number >= value {
            result += symbol
            number -= value
        }
    }
    print("\(num) => \(result)")
    return result
}

//Ex 4-2
func romanToNumber(_ roman : String) -> Int {
    let dataList : [Character: Int] = ["M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5, "I": 1]
    var total = 0
    var previousValue = 0
    
    for char in roman {
        if let value = dataList[char] {
            if value > previousValue {
                // If current value is greater than previous, subtract twice the previous value
                total += value - 2 * previousValue
            } else {
                total += value
            }
            previousValue = value
        }
    }
    print("\(roman) => \(total)")
    return total
}
