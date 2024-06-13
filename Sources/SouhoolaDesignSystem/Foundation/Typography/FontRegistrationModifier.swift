import SwiftUI

struct FontRegistrationModifier: ViewModifier {
    init() {
        FontRegistrar.registerFonts()
    }

    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func registerFonts() -> some View {
        self.modifier(FontRegistrationModifier())
    }
}
