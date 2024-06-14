import SwiftUI
import UIKit

public struct FontRegistrar {
    private static var fontsRegistered = false

    public static func registerFonts() {
        guard !fontsRegistered else { return }
        fontsRegistered = true

        let fonts = [
            "Tiny5-Regular"
        ]

        fonts.forEach { fontName in
            guard let fontURL = Bundle.module.url(forResource: fontName, withExtension: "ttf"),
                  let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
                  let font = CGFont(fontDataProvider) else {
                fatalError("Failed to load font: \(fontName)")
            }

            var error: Unmanaged<CFError>?
            if !CTFontManagerRegisterGraphicsFont(font, &error) {
                if let error = error {
                    let errorDescription = CFErrorCopyDescription(error.takeUnretainedValue())
                    print("Failed to register font: \(fontName), error: \(errorDescription ?? "unknown error" as CFString)")
                }
            }
        }
    }
}
