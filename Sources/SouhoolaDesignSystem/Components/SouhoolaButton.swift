import SwiftUI

/// A customizable button for the Souhoola design system.
public struct SouhoolaButton: View {

    @Environment(\.souhoolaTheme) var theme: SouhoolaTheme
    public var title: String
    public var action: () -> Void
    
    /// Creates a SouhoolaButton with the specified title and action.
    /// - Parameters:
    ///   - title: The text to display inside the button.
    ///   - action: The closure to execute when the button is pressed.
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
        FontRegistrar.registerFonts() // Register the fonts when the button is used
    }
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(theme.headlineFont)
                .padding(theme.mediumSpacing)
                .background(theme.primaryColor)
                .foregroundColor(.white)
                .cornerRadius(theme.smallSpacing)
        }
    }
}


#Preview {
    SouhoolaButton(title: "Press Me", action: {})
        .theme(DefaultSouhoolaTheme())
        .padding()
        .background(SouhoolaColors.background)
        .previewLayout(.sizeThatFits)
}
