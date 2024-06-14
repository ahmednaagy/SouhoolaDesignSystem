# SouhoolaDesignSystem

SouhoolaDesignSystem is a Swift package that provides reusable UI components for the Souhoola design system. It includes customizable buttons, labels, and text fields, among other components. This package ensures consistency and reusability across your iOS projects.

## Installation

To add the SouhoolaDesignSystem package to your Xcode project using Swift Package Manager:

1. Open your project in Xcode.
2. Go to `File` > `Add Packages...`
3. Enter the repository URL for SouhoolaDesignSystem: `https://github.com/ahmednaagy/SouhoolaDesignSystem.git`
4. Choose the version and click `Add Package`.

## Components

### SouhoolaButton

A customizable button for the Souhoola design system.

#### Usage

```swift
import SouhoolaDesignSystem

struct ContentView: View {
    var body: some View {
        SouhoolaButton(title: "Click Me", action: {
            print("Button clicked")
        })
    }
}

Customization

You can customize the button’s appearance using the initializer parameters:


SouhoolaButton(title: "Click Me", action: {
    print("Button clicked")
})
.padding()
.background(SouhoolaColors.background)
.foregroundColor(SouhoolaColors.foreground)

```

### SouhoolaLabel

A customizable label for the Souhoola design system.

#### Usage

```swift

import SouhoolaDesignSystem

struct ContentView: View {
    var body: some View {
        SouhoolaLabel(text: "Hello, World!")
    }
}

Customization

You can customize the label’s appearance using the initializer parameters:

SouhoolaLabel(text: "Hello, World!", font: SouhoolaTypography.headline, textColor: SouhoolaColors.primary)

```



...

## Theming

The SouhoolaDesignSystem supports customizable themes. You can define your own themes and switch between them easily.

### Defining a Theme

To define a custom theme, conform to the `SouhoolaTheme` protocol:

```swift
import SwiftUI

struct CustomTheme: SouhoolaTheme {
    var mainColor: Color = Color.blue
    var secondaryColor: Color = Color.green
    var backgroundColor: Color = Color.white
    var foregroundColor: Color = Color.black
    var headlineFont: Font = Font.system(size: 16, weight: .bold)
    var bodyFont: Font = Font.system(size: 14, weight: .regular)
    var smallSpacing: CGFloat = 8
    var mediumSpacing: CGFloat = 16
    var largeSpacing: CGFloat = 24
}
```

## Using the Theme

Use the theme modifier to apply your custom theme:

import SwiftUI
import SouhoolaDesignSystem

```swift

let customTheme = CustomTheme()

struct ContentView: View {
    var body: some View {
        SouhoolaButton(title: “Themed Button”, action: {
            print(“Button clicked”)
        })
        .theme(customTheme)
    }
}
```

### Customizing Components

Components can be customized using the theme properties or via parameters:

```swift
SouhoolaButton(title: "Custom Button", action: {
    print("Button clicked")
})
.padding()
.background(SouhoolaColors.background)
.foregroundColor(SouhoolaColors.foreground)

```



## Testing

Unit tests are provided for each component to ensure they behave as expected.

### Running Tests

To run the tests, follow these steps:

1. Open the project in Xcode.
2. Select the `SouhoolaDesignSystemTests` scheme.
3. Build and run the tests using `Cmd + U`.

### Example Unit Test

**SouhoolaButtonTests.swift**

```swift
import XCTest
import SwiftUI
@testable import SouhoolaDesignSystem

final class SouhoolaButtonTests: XCTestCase {
    func testButtonTitle() {
        let button = SouhoolaButton(title: "Test", action: {})
        XCTAssertEqual(button.title, "Test")
    }

    func testButtonAction() {
        var actionExecuted = false
        let button = SouhoolaButton(title: "Test", action: {
            actionExecuted = true
        })

        button.action()
        XCTAssertTrue(actionExecuted)
    }
}

```
