import SwiftUI

public protocol SouhoolaTheme {
    var primaryColor: Color { get }
    var secondaryColor: Color { get }
    var backgroundColor: Color { get }
    var headingColor: Color { get }
    var subheadingColor: Color { get }
    var textFieldBackgroundColor: Color { get }
    var buttonTextColor: Color { get }
    var headlineFont: Font { get }
    var bodyFont: Font { get }
    var smallSpacing: CGFloat { get }
    var mediumSpacing: CGFloat { get }
    var largeSpacing: CGFloat { get }
}

public struct DefaultSouhoolaTheme: SouhoolaTheme {
    public var primaryColor: Color = SouhoolaColors.mainPurple
    public var secondaryColor: Color = SouhoolaColors.mediumGrey
    public var backgroundColor: Color = SouhoolaColors.white
    public var headingColor: Color = SouhoolaColors.black
    public var subheadingColor: Color = SouhoolaColors.darkGray
    public var textFieldBackgroundColor: Color = SouhoolaColors.darkGrayWithOpacity
    public var buttonTextColor: Color = SouhoolaColors.white
    public var headlineFont: Font = SouhoolaTypography.headline
    public var bodyFont: Font = SouhoolaTypography.body
    public var smallSpacing: CGFloat = SouhoolaSpacing.small
    public var mediumSpacing: CGFloat = SouhoolaSpacing.medium
    public var largeSpacing: CGFloat = SouhoolaSpacing.large
}
