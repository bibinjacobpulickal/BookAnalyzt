//
//  ColorHelper.swift
//  BookAnalyzt
//
//  Created by Bibin Jacob Pulickal on 26/11/20.
//

import SwiftUI

extension ColorScheme: Identifiable {
    public var id: UUID { UUID() }
}

extension View {

    @inlinable func backgroundColor(_ color: UIColor, alignment: Alignment = .center) -> some View {
        background(Color(color), alignment: alignment)
    }

    @inlinable func backgroundColor(_ color: Color, alignment: Alignment = .center) -> some View {
        background(color, alignment: alignment)
    }
}
