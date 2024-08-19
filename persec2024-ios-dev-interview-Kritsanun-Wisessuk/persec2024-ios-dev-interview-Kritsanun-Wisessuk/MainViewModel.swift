import Foundation

class MainViewModel {
    
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
    
    //EX 2
    func sortStringWithNumbers(_ arrStr : [String]) -> [String] {
        let sorted = arrStr.sorted { (lhs: String, rhs: String) -> Bool in
            return lhs.localizedStandardCompare(rhs) == .orderedAscending
        }
        print("\(arrStr) => \(sorted)")
        return sorted
    }
    
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
    
}
