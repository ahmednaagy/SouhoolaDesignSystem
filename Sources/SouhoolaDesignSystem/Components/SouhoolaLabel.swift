import SwiftUI

/// A customizable label for the Souhoola design system.
public struct SouhoolaLabel: View {

    @Environment(\.souhoolaTheme) var theme: SouhoolaTheme
    public var text: String
    public var font: Font
    public var textColor: Color

    /// Creates a SouhoolaLabel with the specified text, font, and text color.
    /// - Parameters:
    ///   - text: The text to display in the label.
    ///   - font: The font to use for the label's text.
    ///   - textColor: The color to use for the label's text.
    public init(text: String, font: Font = SouhoolaTypography.body, textColor: Color = SouhoolaColors.foreground) {
        self.text = text
        self.font = font
        self.textColor = textColor
        FontRegistrar.registerFonts()
    }

    public var body: some View {
        Text(text)
            .font(theme.bodyFont)
            .foregroundColor(theme.foregroundColor)
    }
}

#Preview {
    SouhoolaLabel(text: "Sample Label")
        .theme(DefaultSouhoolaTheme())
        .padding()
        .background(SouhoolaColors.background)
        .previewLayout(.sizeThatFits)
}
