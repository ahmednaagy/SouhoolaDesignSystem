import SwiftUI

/// A customizable button for the Souhoola design system.
public struct SouhoolaButton: View {
    @Environment(\.souhoolaTheme) var theme: SouhoolaTheme
    public var title: String
    public var style: ButtonStyle
    public var isDisabled: Bool = false
    public var font: Font?
    public var action: () -> Void

    /// The style of the button.
    public enum ButtonStyle {
        /// A primary button with a filled background.
        case primary
        /// A secondary button with no background and colored text.
        case secondary
    }

    /// Creates a SouhoolaButton with the specified title, action, style, and disabled state.
    /// - Parameters:
    ///   - title: The title to display in the button.
    ///   - action: The action to perform when the button is tapped.
    ///   - style: The style of the button. Defaults to `.primary`.
    ///   - isDisabled: A boolean to indicate if the button is disabled. Defaults to `false`.
    public init(
        title: String,
        style: ButtonStyle = .primary,
        isDisabled: Bool = false,
        font: Font? = nil,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.action = action
        self.style = style
        self.font = font
        self.isDisabled = isDisabled
        FontRegistrar.registerFonts()
    }

    private var backgroundColor: Color {
        switch style {
        case .primary:
            return isDisabled ? theme.textFieldBackgroundColor : theme.primaryColor
        case .secondary:
            return Color.clear
        }
    }

    private var textColor: Color {
        switch style {
        case .primary:
            return theme.buttonTextColor
        case .secondary:
            return theme.primaryColor
        }
    }

    private var border: some View {
        switch style {
        case .secondary:
            return RoundedRectangle(cornerRadius: theme.smallSpacing)
                .stroke(Color.clear, lineWidth: 2)
        case .primary:
            return RoundedRectangle(cornerRadius: theme.smallSpacing)
                .stroke(Color.clear, lineWidth: 0)
        }
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(font ?? theme.headlineFont)
                .padding(.vertical, theme.mediumSpacing)
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .cornerRadius(theme.smallSpacing)
                .overlay(border)
        }
        .disabled(isDisabled)
    }
}


#Preview {
    VStack(spacing: 16) {
        SouhoolaButton(title: "Delete", style: .primary) {

        }
        SouhoolaButton(title: "Keep", style: .secondary) {

        }
        SouhoolaButton(title: "Pay now", style: .primary, isDisabled: true) {
            
        }
    }
    .theme(DefaultSouhoolaTheme())
    .padding()
    .background(SouhoolaColors.souhoolaWhite)
    .previewLayout(.sizeThatFits)
}
