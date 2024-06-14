import SwiftUI

struct SouhoolaButtonTestView: View {
    var body: some View {
        VStack(spacing: SouhoolaSpacing.large) {
            SouhoolaButton(title: "Test", style: .primary) {

            }
            SouhoolaButton(title: "Test", style: .secondary) {

            }
            SouhoolaButton(title: "Test", style: .primary, isDisabled: true) {

            }
        }
        .theme(DefaultSouhoolaTheme())
        .padding()
        .background(SouhoolaColors.souhoolaWhite)
        .previewLayout(.sizeThatFits)
    }
}

#Preview {
    SouhoolaButtonTestView()
}
