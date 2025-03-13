//
//  StringExtension.swift
//  GOW_Practice
//
//  Created by Oliver Atondo on 08/03/25.
//

import Foundation

extension String {
    
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
