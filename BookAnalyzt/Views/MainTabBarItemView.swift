//
//  MainTabBarItemView.swift
//  BookAnalyzt
//
//  Created by Bibin Jacob Pulickal on 26/11/20.
//

import SwiftUI

struct MainTabBarItemView: View {

    let isSelected: Bool
    let item: MainTabBarItem

    var body: some View {
        Group {
            if isSelected {
                VStack {
                    Text(item.title)
                        .font(.headline)
                    Text(".")
                        .font(.title)
                        .fontWeight(.black)
                        .frame(height: 2)
                        .padding(.bottom)
                }
                .foregroundColor(.accentColor)
            } else {
                Image(uiImage: item.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.secondary)
            }
        }
        .frame(width: 84, height: 24, alignment: .center)
        .padding()
    }
}

struct MainTabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(MainTabBarItem.allCases) { item in
            ForEach([true, false], id: \.self) { bool in
                ForEach(ColorScheme.allCases) {
                    MainTabBarItemView(isSelected: bool, item: item)
                        .backgroundColor(.systemBackground)
                        .environment(\.colorScheme, $0)
                }
            }
        }
        .previewLayout(.sizeThatFits)
    }
}
