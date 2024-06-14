import SwiftUI

public struct ThemeModifier: ViewModifier {
    public var theme: SouhoolaTheme

    public init(theme: SouhoolaTheme) {
        self.theme = theme
    }

    public func body(content: Content) -> some View {
        content.environment(\.souhoolaTheme, theme)
    }
}

extension View {
    public func theme(_ theme: SouhoolaTheme) -> some View {
        self.modifier(ThemeModifier(theme: theme))
    }
}
