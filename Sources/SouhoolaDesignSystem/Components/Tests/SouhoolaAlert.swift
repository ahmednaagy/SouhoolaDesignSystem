//
//  SwiftUIView.swift
//  
//
//  Created by Ahmed Nagy on 14/06/2024.
//

import SwiftUI

public struct SouhoolaAlert: View {
    
    public var title: String
    public var message: String?
    public var primaryButtonTitle: String
    public var primaryButtonAction: () -> Void
    public var secondaryButtonTitle: String?
    public var secondaryButtonAction: (() -> Void)?
    public var dismissOnBackgroundTap: Bool = false
    public var onDismiss: (() -> Void)?
    public var image: Image?

    public init(
        title: String,
        message: String? = nil,
        primaryButtonTitle: String,
        primaryButtonAction: @escaping () -> Void,
        secondaryButtonTitle: String? = nil,
        secondaryButtonAction: (() -> Void)? = nil,
        dismissOnBackgroundTap: Bool = false,
        onDismiss: (() -> Void)? = nil,
        image: Image? = nil
    ) {
        self.title = title
        self.message = message
        self.primaryButtonTitle = primaryButtonTitle
        self.primaryButtonAction = primaryButtonAction
        self.secondaryButtonTitle = secondaryButtonTitle
        self.secondaryButtonAction = secondaryButtonAction
        self.dismissOnBackgroundTap = dismissOnBackgroundTap
        self.onDismiss = onDismiss
        self.image = image
    }

    public var body: some View {
        ZStack {
            // Background overlay with opacity
            Color.black.opacity(0.5)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    if dismissOnBackgroundTap {
                        onDismiss?()
                    }
                }

            // Dialog box
            VStack {
                Spacer()

                VStack(spacing: 16) {
                    if let image = image {
                        image
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(20)
                    }

                    SouhoolaLabel(text: title, font: SouhoolaTypography.light, textColor: SouhoolaColors.souhoolaBlack)

                    if let message = message {
                        SouhoolaLabel(text: message, font: SouhoolaTypography.body, textColor: SouhoolaColors.souhoolaMediumDarkGray)
                            .multilineTextAlignment(.center)
                            .padding(16)
                    }
                    
                    SouhoolaButton(title: primaryButtonTitle, style: .primary, font: SouhoolaTypography.body, action: primaryButtonAction)
                        .padding(12)

                    if let secondaryButtonTitle = secondaryButtonTitle, let secondaryButtonAction = secondaryButtonAction {
                        SouhoolaButton(title: secondaryButtonTitle, style: .secondary, isDisabled: false, font: SouhoolaTypography.light, action: secondaryButtonAction)
                        .padding(.all, 12)
                    }
                }
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(16)
                .padding(.horizontal, 24)
                .shadow(radius: 10)

                Spacer()
            }
        }
    }
}



#Preview {
    SouhoolaAlert(
        title: "Discard Changes!",
        message: "Are you sure you want to close the request? If Yes, The data that entered will not be saved.",
        primaryButtonTitle: "Yes",
        primaryButtonAction: {},
        secondaryButtonTitle: "No",
        secondaryButtonAction: {},
        dismissOnBackgroundTap: true,
        onDismiss: {},
        image: Image(systemName: "exclamationmark.circle.fill")
    )
}

#Preview {
    SouhoolaAlert(
        title: "Delete this attachment?",
        message: "Are you sure you want to delete this attachment?",
        primaryButtonTitle: "Delete",
        primaryButtonAction: {},
        secondaryButtonTitle: "Keep",
        secondaryButtonAction: {},
        dismissOnBackgroundTap: true,
        onDismiss: {},
        image: Image(systemName: "trash.fill")
    )
}

#Preview {
    SouhoolaAlert(
        title: "The card has been successfully linked!",
        message: nil,
        primaryButtonTitle: "Ok",
        primaryButtonAction: {},
        dismissOnBackgroundTap: true,
        onDismiss: {},
        image: Image(systemName: "checkmark.circle.fill")
    )
}

