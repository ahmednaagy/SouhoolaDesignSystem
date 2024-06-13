import SwiftUI
import UIKit

public struct FontRegistrar {
    public static func registerFonts() {
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
            CTFontManagerRegisterGraphicsFont(font, &error)
            if let error = error {
                let errorDescription = CFErrorCopyDescription(error.takeUnretainedValue())
                print("Failed to register font: \(fontName), error: \(errorDescription ?? "unknown error" as CFString)")
            }
        }
    }
}
