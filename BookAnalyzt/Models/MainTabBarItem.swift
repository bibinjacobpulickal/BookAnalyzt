//
//  MainTabBarItem.swift
//  BookAnalyzt
//
//  Created by Bibin Jacob Pulickal on 26/11/20.
//

import UIKit

enum MainTabBarItem: String, CaseIterable {
    case myBooks
    case allBooks
}

extension MainTabBarItem: Identifiable {

    var id: UUID { UUID() }

    var title: String { rawValue.camelCaseToWords }

    var image: UIImage {
        switch self {
        case .myBooks: return #imageLiteral(resourceName: "my-courses")
        case .allBooks: return #imageLiteral(resourceName: "all-courses")
        }
    }
}
