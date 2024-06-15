import SwiftUI

public struct SouhoolaTypography {
    // Predefined fonts with specific sizes
    public static let bold = Font.custom("Almarai-Bold", size: 24)
    public static let body = Font.custom("Almarai-Regular", size: 16)
    public static let light = Font.custom("Almarai-Light", size: 12)
    public static let extraBold = Font.custom("Almarai-ExtraBold", size: 28)

    // Methods for accessing custom fonts with specified sizes

    /// Get a font with the specified size from the "Almarai-Regular" font family.
    ///
    /// - Parameter size: The desired font size.
    /// - Returns: A `Font` with the specified size and the "Almarai-Regular" font family, or a system font if not available.
    public static func regular(size: CGFloat) -> Font {
        return Font.custom("Almarai-Regular", size: size)
    }

    /// Get a font with the specified size from the "Almarai-Light" font family.
    ///
    /// - Parameter size: The desired font size.
    /// - Returns: A `Font` with the specified size and the "Almarai-Light" font family, or a system font if not available.
    public static func light(size: CGFloat) -> Font {
        return Font.custom("Almarai-Light", size: size)
    }

    /// Get a font with the specified size from the "Almarai-ExtraBold" font family.
    ///
    /// - Parameter size: The desired font size.
    /// - Returns: A `Font` with the specified size and the "Almarai-ExtraBold" font family, or a system font if not available.
    public static func extraBold(size: CGFloat) -> Font {
        return Font.custom("Almarai-ExtraBold", size: size)
    }

    /// Get a bold font with the specified size from the "Almarai-Bold" font family.
    ///
    /// - Parameter size: The desired font size.
    /// - Returns: A bold `Font` with the specified size and the "Almarai-Bold" font family, or a system bold font if not available.
    public static func bold(size: CGFloat) -> Font {
        return Font.custom("Almarai-Bold", size: size)
    }
}
