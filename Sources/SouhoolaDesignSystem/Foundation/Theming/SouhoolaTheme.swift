import SwiftUI

public protocol SouhoolaTheme {
    var primaryColor: Color { get }
    var secondaryColor: Color { get }
    var backgroundColor: Color { get }
    var foregroundColor: Color { get }
    var headlineFont: Font { get }
    var bodyFont: Font { get }
    var smallSpacing: CGFloat { get }
    var mediumSpacing: CGFloat { get }
    var largeSpacing: CGFloat { get }
}

public struct DefaultSouhoolaTheme: SouhoolaTheme {
    public var primaryColor: Color = SouhoolaColors.primary
    public var secondaryColor: Color = SouhoolaColors.secondary
    public var backgroundColor: Color = SouhoolaColors.background
    public var foregroundColor: Color = SouhoolaColors.foreground
    public var headlineFont: Font = SouhoolaTypography.headline
    public var bodyFont: Font = SouhoolaTypography.body
    public var smallSpacing: CGFloat = SouhoolaSpacing.small
    public var mediumSpacing: CGFloat = SouhoolaSpacing.medium
    public var largeSpacing: CGFloat = SouhoolaSpacing.large
}
