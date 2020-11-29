//
//  SubHeadingView.swift
//  BookAnalyzt
//
//  Created by Bibin Jacob Pulickal on 29/11/20.
//

import SwiftUI

struct SubHeadingView: View {
    var heading: String
    var body: some View {
        HStack {
            Text(heading)
                .bold()
                .font(.title3)
                .foregroundColor(.white)
                .padding(.horizontal)
            Spacer()
            Text(".  .")
                .bold()
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.horizontal)
                .frame(height: 4)
                .offset(y: -10)
        }
        .padding()
    }
}

struct SubHeadingView_Previews: PreviewProvider {
    static var previews: some View {
        SubHeadingView(heading: "Set Reading Time")
    }
}
