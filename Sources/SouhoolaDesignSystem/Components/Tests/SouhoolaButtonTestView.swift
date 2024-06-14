import SwiftUI

struct SouhoolaButtonTestView: View {
    var body: some View {
        VStack(spacing: SouhoolaSpacing.large) {
            SouhoolaButton(title: "Test", action: {}, style: .primary)
            SouhoolaButton(title: "Test", action: {}, style: .secondary)
            SouhoolaButton(title: "Test", action: {}, style: .primary, isDisabled: true)
        }
        .theme(DefaultSouhoolaTheme())
        .padding()
        .background(SouhoolaColors.white)
        .previewLayout(.sizeThatFits)
    }
}

#Preview {
    SouhoolaButtonTestView()
}
