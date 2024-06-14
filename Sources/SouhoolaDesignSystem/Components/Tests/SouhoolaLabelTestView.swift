import SwiftUI

struct SouhoolaLabelTestView: View {
    var body: some View {
        VStack(spacing: SouhoolaSpacing.large) {
            SouhoolaLabel(text: "Primary Label", font: SouhoolaTypography.headline, textColor: SouhoolaColors.mainPurple)
            SouhoolaLabel(text: "Secondary Label", font: SouhoolaTypography.customRegular, textColor: SouhoolaColors.black)
        }
        .padding()
        .background(SouhoolaColors.white)
        .previewLayout(.sizeThatFits)
    }
}

#Preview {
    SouhoolaLabelTestView()
}
