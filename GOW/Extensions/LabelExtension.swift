//
//  LabelExtension.swift
//  GOW_Practice
//
//  Created by Oliver Atondo on 08/03/25.
//

import UIKit

extension UILabel {
    func setCustomFont(fontName: String, size: CGFloat, textStyle: UIFont.TextStyle) {
        guard let customFont = UIFont(name: fontName, size: size) else {
            self.font = UIFont.systemFont(ofSize: size)
            return
        }
        self.font = customFont
        
        let fontmetrics = UIFontMetrics(forTextStyle: textStyle)
        self.font = fontmetrics.scaledFont(for: customFont)
        self.adjustsFontForContentSizeCategory = true
        
        self.textColor = .gowText
    }
}
