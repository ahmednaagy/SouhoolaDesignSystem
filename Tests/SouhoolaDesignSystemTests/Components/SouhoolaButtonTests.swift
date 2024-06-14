import XCTest
import SwiftUI
@testable import SouhoolaDesignSystem

final class SouhoolaButtonTests: XCTestCase {
    func testButtonTitle() {
        let button = SouhoolaButton(title: "Test", action: {})
        XCTAssertEqual(button.title, "Test")
    }

    func testButtonAction() {
        var actionExecuted = false
        let button = SouhoolaButton(title: "Test", action: {
            actionExecuted = true
        })

        button.action()
        XCTAssertTrue(actionExecuted)
    }
}
