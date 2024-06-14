import SwiftUI

struct SouhoolaButtonTestView: View {
    var body: some View {
        VStack(spacing: SouhoolaSpacing.large) {
            
            SouhoolaButton(title: "Primary Button", action: {
                print("Button pressed")
            })
            .padding()
        }
        .background(SouhoolaColors.background)
        .previewLayout(.sizeThatFits)
    }
}

#Preview {
    SouhoolaButtonTestView()
}
