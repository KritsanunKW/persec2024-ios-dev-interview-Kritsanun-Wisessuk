//
//  Ex2.swift
//  persec2024-ios-dev-interview-Kritsanun-Wisessuk
//
//  Created by Kritsanun Wisessuk on 19/8/2567 BE.
//

import Foundation

//EX 2
func sortStringWithNumbers(_ arrStr : [String]) -> [String] {
    let sorted = arrStr.sorted { (lhs: String, rhs: String) -> Bool in
        return lhs.localizedStandardCompare(rhs) == .orderedAscending
    }
    print("\(arrStr) => \(sorted)")
    return sorted
}
