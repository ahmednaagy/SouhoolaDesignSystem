import SwiftUI

struct SouhoolaLabelTestView: View {
    var body: some View {
        VStack(spacing: SouhoolaSpacing.large) {
            SouhoolaLabel(text: "Primary Label", font: SouhoolaTypography.headline, textColor: SouhoolaColors.souhoolaMainPurple)
            SouhoolaLabel(text: "Secondary Label", font: SouhoolaTypography.customRegular, textColor: SouhoolaColors.souhoolaBlack)
        }
        .padding()
        .background(SouhoolaColors.souhoolaWhite)
        .previewLayout(.sizeThatFits)
    }
}

#Preview {
    SouhoolaLabelTestView()
}
