import SwiftUI

private struct ThemeEnvironmentKey: EnvironmentKey {
    static let defaultValue: SouhoolaTheme = DefaultSouhoolaTheme()
}

extension EnvironmentValues {
    var souhoolaTheme: SouhoolaTheme {
        get { self[ThemeEnvironmentKey.self] }
        set { self[ThemeEnvironmentKey.self] = newValue }
    }
}
