//
//  ContentView.swift
//  BookAnalyzt
//
//  Created by Bibin Jacob Pulickal on 26/11/20.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedItem = MainTabBarItem.myBooks

    var body: some View {
        VStack(spacing: 0) {
            Text("Hello, world!")
                .padding()
                .frame(maxHeight: .infinity)
            MainTabBarView(selectedItem: $selectedItem)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases) {
            ContentView()
                .backgroundColor(.systemBackground)
                .environment(\.colorScheme, $0)
        }
    }
}
