//
//  persec2024_ios_dev_interview_Kritsanun_WisessukUITestsLaunchTests.swift
//  persec2024-ios-dev-interview-Kritsanun-WisessukUITests
//
//  Created by Kritsanun Wisessuk on 19/8/2567 BE.
//

import XCTest

final class persec2024_ios_dev_interview_Kritsanun_WisessukUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
