import SwiftUI

struct SouhoolaLabelTestView: View {
    var body: some View {
        VStack(spacing: SouhoolaSpacing.large) {
            SouhoolaLabel(text: "Primary Label", font: SouhoolaTypography.headline, textColor: SouhoolaColors.primary)
            SouhoolaLabel(text: "Secondary Label", font: SouhoolaTypography.customRegular, textColor: SouhoolaColors.secondary)
        }
        .padding()
        .background(SouhoolaColors.background)
        .previewLayout(.sizeThatFits)
    }
}

#Preview {
    SouhoolaLabelTestView()
}
