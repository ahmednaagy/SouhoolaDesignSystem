import SwiftUI

struct ButtonsTestView: View {
    var title: String
    var action: () -> Void

    init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(SouhoolaTypography.headline)
                .padding(SouhoolaSpacing.medium)
                .background(SouhoolaColors.primary)
                .foregroundColor(.white)
                .cornerRadius(SouhoolaSpacing.small)
        }
    }
}

#Preview {
    ButtonsTestView(title: "Press Me", action: {})
}
