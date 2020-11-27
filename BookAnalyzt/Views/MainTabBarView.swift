//
//  MainTabBarView.swift
//  BookAnalyzt
//
//  Created by Bibin Jacob Pulickal on 26/11/20.
//

import SwiftUI

struct MainTabBarView: View {

    @Binding var selectedItem: MainTabBarItem

    var body: some View {
        HStack {
            ForEach(MainTabBarItem.allCases) { item in
                Spacer()
                Button(action: {
                    withAnimation {
                        selectedItem = item
                    }
                }) {
                    MainTabBarItemView(isSelected: item == selectedItem, item: item)
                }
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(
            Color(UIColor.systemBackground)
                .shadow(color: Color.accentColor.opacity(0.1), radius: 2, y: -4)
        )
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(MainTabBarItem.allCases) { item in
            ForEach(ColorScheme.allCases) {
                MainTabBarView(selectedItem: .constant(item))
                    .environment(\.colorScheme, $0)
                    .backgroundColor(.systemBackground)
            }
        }
        .previewLayout(.sizeThatFits)
    }
}
