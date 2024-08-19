//
//  Ex1.swift
//  persec2024-ios-dev-interview-Kritsanun-Wisessuk
//
//  Created by Kritsanun Wisessuk on 19/8/2567 BE.
//

import Foundation

//EX 1
func checkBracket(_ string : String) -> Bool {
    let Bracket: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
    var stack: [Character] = []
    var result : Bool = true
    
    //Check input string is even?
    if (string.count % 2 == 0) {
        for char in string {
            if let match = Bracket[char] {
                //if match add value
                stack.append(match)
            } else if stack.last == char {
                stack.removeLast()
            } else {
                result = false
            }
        }
    }else {
        result = false
    }
    
    print("\"\(string)\" => \(result)")
    return result
}
