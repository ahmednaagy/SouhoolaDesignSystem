import XCTest
import SwiftUI
@testable import SouhoolaDesignSystem

final class SouhoolaLabelTests: XCTestCase {
    func testLabelText() {
        let label = SouhoolaLabel(text: "Test Label")
        XCTAssertEqual(label.text, "Test Label")
    }

    func testLabelCustomization() {
        let label = SouhoolaLabel(text: "Custom Label", font: SouhoolaTypography.bold, textColor: SouhoolaColors.souhoolaMainPurple)
        XCTAssertEqual(label.font, SouhoolaTypography.bold)
        XCTAssertEqual(label.textColor, SouhoolaColors.souhoolaMainPurple)
    }
}
