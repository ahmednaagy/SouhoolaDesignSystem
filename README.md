# SouhoolaDesignSystem

SouhoolaDesignSystem is a Swift package that provides reusable UI components for the Souhoola design system. It includes customizable buttons, labels, and text fields, among other components. This package ensures consistency and reusability across your iOS projects.

## Installation

To add the SouhoolaDesignSystem package to your Xcode project using Swift Package Manager:

1. Open your project in Xcode.
2. Go to `File` > `Add Packages...`
3. Enter the repository URL for SouhoolaDesignSystem.
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
