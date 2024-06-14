//
//  ImageAssets.swift
//
//
//  Created by Ahmed Nagy on 14/06/2024.
//

import SwiftUI

public enum SouhoolaImageAssets: String {
    case delete
    case success = "image_success"
    case error = "image_error"
    case warning = "image_warning"

    public var image: Image {
        return Image(self.rawValue, bundle: .module)
    }
}

