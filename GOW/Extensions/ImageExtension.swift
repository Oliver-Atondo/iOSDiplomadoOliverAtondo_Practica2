//
//  ImageExtension.swift
//  GOW_Practice
//
//  Created by Oliver Atondo on 11/03/25.
//

import UIKit

extension UIImage {
    /// Redimensiona la imagen a un nuevo tamaño.
    func resized(to size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        draw(in: CGRect(origin: .zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizedImage
    }
}
