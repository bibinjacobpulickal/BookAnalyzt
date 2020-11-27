//
//  StringHelpers.swift
//  BookAnalyzt
//
//  Created by Bibin Jacob Pulickal on 26/11/20.
//

import Foundation

extension String {

    var camelCaseToWords: String {
        unicodeScalars.reduce("") { CharacterSet.uppercaseLetters.contains($1) ? "\($0) \($1)" : "\($0)\($1)" }.capitalized
    }
}
