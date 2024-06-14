import SwiftUI

public protocol SouhoolaTheme {
    var mainColor: Color { get }
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
    public var mainColor: Color = SouhoolaColors.souhoolaMainPurple
    public var secondaryColor: Color = SouhoolaColors.souhoolaMediumGrey
    public var backgroundColor: Color = SouhoolaColors.souhoolaWhite
    public var headingColor: Color = SouhoolaColors.souhoolaBlack
    public var subheadingColor: Color = SouhoolaColors.souhoolaDarkGray
    public var textFieldBackgroundColor: Color = SouhoolaColors.souhoolaDarkGrayWithOpacity
    public var buttonTextColor: Color = SouhoolaColors.souhoolaWhite
    public var headlineFont: Font = SouhoolaTypography.headline
    public var bodyFont: Font = SouhoolaTypography.body
    public var smallSpacing: CGFloat = SouhoolaSpacing.small
    public var mediumSpacing: CGFloat = SouhoolaSpacing.medium
    public var largeSpacing: CGFloat = SouhoolaSpacing.large
}
