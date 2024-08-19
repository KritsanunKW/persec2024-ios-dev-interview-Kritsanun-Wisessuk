//
//  persec2024_ios_dev_interview_Kritsanun_WisessukTests.swift
//  persec2024-ios-dev-interview-Kritsanun-WisessukTests
//
//  Created by Kritsanun Wisessuk on 19/8/2567 BE.
//

import XCTest
@testable import persec2024_ios_dev_interview_Kritsanun_Wisessuk

final class persec2024_ios_dev_interview_Kritsanun_WisessukTests: XCTestCase {
    
    var viewModel: MainViewModel!

    override func setUpWithError() throws {
        viewModel = MainViewModel()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        viewModel = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEx1Case() throws {
        print("\nQ1_Check Bracket\n")
        print("Q1_Case1 :")
        XCTAssertEqual(viewModel.checkBracket("()"),true)
        
        print("Q1_Case2 :")
        XCTAssertEqual(viewModel.checkBracket("([]]"),false)
        
        print("Q1_Case3 :")
        XCTAssertEqual(viewModel.checkBracket("([{}])"),true)
        
        print("Q1_Case4 :")
        XCTAssertEqual(viewModel.checkBracket("([[{}]]]"),false)
        
        print("Q1_Case5 :")
        XCTAssertEqual(viewModel.checkBracket(")"),false)
        
        print("Q1_Case6 :")
        XCTAssertEqual(viewModel.checkBracket("(]}])"),false)
        
        print("Q1_Case7 :")
        XCTAssertEqual(viewModel.checkBracket("([)]"),false)
        
        print("Q1_Case8 :")
        XCTAssertEqual(viewModel.checkBracket("{"),false)
        print("\n")
    }
    
    func testEx2Case() throws {
        print("\nQ2 : Sort String with Numbers\n")
        print("Q2_Case1 :")
        XCTAssertEqual(viewModel.sortStringWithNumbers(["TH19", "SG20" , "TH2"]),["SG20" ,"TH2", "TH19"])
        
        print("Q2_Case2 :")
        XCTAssertEqual(viewModel.sortStringWithNumbers(["TH10", "TH3Netflix" , "TH1", "TH7"]),[ "TH1", "TH3Netflix" , "TH7", "TH10"])
        print("\n")
    }
    
    func testEx3Case() throws {
        print("\nQ3 : AutoComplete\n")
        XCTAssertEqual(viewModel.autoComplete("th", ["Mother", "Think", "Worthy", "Apple", "Android"], 2),["Think", "Mother"])
        print("\n")
    }
    
    func testEx4_1Case() throws {
        print("\nQ4-1 : Convert Number to Roman Numerals\n")
        
        print("Q4-1_Case1 :")
        XCTAssertEqual(viewModel.numberToRoman(1989),"MCMLXXXIX")
        
        print("Q4-1_Case2 :")
        XCTAssertEqual(viewModel.numberToRoman(2000),"MM")
        
        print("Q4-1_Case3 :")
        XCTAssertEqual(viewModel.numberToRoman(68),"LXVIII")
        
        print("Q4-1_Case4 :")
        XCTAssertEqual(viewModel.numberToRoman(109),"CIX")
        print("\n")
    }
    
    func testEx4_2Case() throws {
        print("\nQ4-2 : Convert Roman Numerals to Number\n")
        
        print("Q4-2_Case1")
        XCTAssertEqual(viewModel.romanToNumber("MCMLXXXIX"),1989)
        
        print("Q4-2_Case2")
        XCTAssertEqual(viewModel.romanToNumber("MM"),2000)
        
        print("Q4-2_Case3")
        XCTAssertEqual(viewModel.romanToNumber("LXVIII"),68)
        
        print("Q4-2_Case4")
        XCTAssertEqual(viewModel.romanToNumber("CIX"),109)
        print("\n")
    }
    
    func testEx5Case() throws {
        print("\nQ5 : Sorting Number\n")
        
        print("Q5_Case1 :")
        XCTAssertEqual(viewModel.sortNumber(3008),8300)
        
        print("Q5_Case2 :")
        XCTAssertEqual(viewModel.sortNumber(1989),9981)
        
        print("Q5_Case3 :")
        XCTAssertEqual(viewModel.sortNumber(2679),9762)
        
        print("Q5_Case4 :")
        XCTAssertEqual(viewModel.sortNumber(9163),9631)
        print("\n")
    }

}
