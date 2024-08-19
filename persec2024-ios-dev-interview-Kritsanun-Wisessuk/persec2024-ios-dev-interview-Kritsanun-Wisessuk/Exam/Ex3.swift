//
//  Ex3.swift
//  persec2024-ios-dev-interview-Kritsanun-Wisessuk
//
//  Created by Kritsanun Wisessuk on 19/8/2567 BE.
//

import Foundation

//EX 3
func autoComplete(_ textSearch : String, _ suggest : [String], _ maxResult : Int) -> [String] {
    let lowercasedSearch = textSearch.lowercased()
    
    // filter match words
    let prefixMatches = suggest.filter { $0.lowercased().hasPrefix(lowercasedSearch) }
    
    // filter words containing
    let containingMatches = suggest.filter { $0.lowercased().contains(lowercasedSearch) && !$0.lowercased().hasPrefix(lowercasedSearch) }
    
    // sorting the results
    let sortedPrefixMatches = prefixMatches.sorted()
    let sortedContainingMatches = containingMatches.sorted()
    let combinedResults = sortedPrefixMatches + sortedContainingMatches
    
    //return limit count
    print(Array(combinedResults.prefix(maxResult)))
    return Array(combinedResults.prefix(maxResult))
}
