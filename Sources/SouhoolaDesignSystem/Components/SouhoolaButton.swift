import SwiftUI

/// A customizable button for the Souhoola design system.
public struct SouhoolaButton: View {
    public var title: String
    public var action: () -> Void
    
    /// Creates a SouhoolaButton with the specified title and action.
    /// - Parameters:
    ///   - title: The text to display inside the button.
    ///   - action: The closure to execute when the button is pressed.
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(SouhoolaTypography.headline)
                .padding(SouhoolaSpacing.medium)
                .background(SouhoolaColors.primary)
                .foregroundColor(.white)
                .cornerRadius(SouhoolaSpacing.small)
        }
        .registerFonts()
    }
}


#Preview {
    SouhoolaButton(title: "Press Me", action: {})
}
