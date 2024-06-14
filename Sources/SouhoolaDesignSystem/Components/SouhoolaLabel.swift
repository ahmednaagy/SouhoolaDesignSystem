import SwiftUI

/// A customizable label for the Souhoola design system.
public struct SouhoolaLabel: View {

    @Environment(\.souhoolaTheme) var theme: SouhoolaTheme
    public var text: String
    public var font: Font?
    public var textColor: Color?

    /// Creates a SouhoolaLabel with the specified text, font, and text color.
    /// - Parameters:
    ///   - text: The text to display in the label.
    ///   - font: The font to use for the label's text. If not provided, it uses the theme's bodyFont.
    ///   - textColor: The color to use for the label's text. If not provided, it uses the theme's main color.
    public init(text: String, font: Font? = nil, textColor: Color? = nil) {
        self.text = text
        self.font = font
        self.textColor = textColor
        FontRegistrar.registerFonts()
    }

    public var body: some View {
        Text(text)
            .font(font ?? theme.bodyFont)
            .foregroundColor(textColor ?? theme.mainColor)
    }
}

#Preview {
    SouhoolaLabel(text: "Sample Label")
        .theme(DefaultSouhoolaTheme())
        .padding()
        .background(SouhoolaColors.souhoolaWhite)
        .previewLayout(.sizeThatFits)
}
