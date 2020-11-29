//
//  MyBooksView.swift
//  BookAnalyzt
//
//  Created by Bibin Jacob Pulickal on 28/11/20.
//

import SwiftUI

struct MyBooksView: View {

    var bookNames = [
        "The World of Abstract Art",
        "Stay Up with Hugo Best",
        "Bone Jack : Sara Crowe"]

    var body: some View {
        GeometryReader { reader in
            ScrollView {
                VStack {
                    VStack {
                        HStack {
                            Text("Choose your\nbook for reading.")
                                .font(.largeTitle)
                                .frame(height: 86)
                            Spacer()
                            Image(uiImage: #imageLiteral(resourceName: "user"))
                                .resizable()
                                .cornerRadius(25)
                                .frame(width: 50, height: 50)
                        }
                        .padding(.horizontal)
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0..<9) { index in
                                    VStack {
                                        Image("Book\(index % 3)")
                                            .resizable()
                                            .cornerRadius(24)
                                            .shadow(color: .accentColor, radius: 4)
                                            .frame(width: 120, height: 180)
                                        Text(bookNames[index % 3])
                                            .lineLimit(2)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 120, height: 64)
                                    }
                                    .padding(8)
                                }
                            }
                            .padding()
                        }
                        .frame(height: 280)
                        Spacer()
                            .frame(height: 12)
                    }
                    .background(Color(.systemBackground)
                                    .cornerRadius(40, corners: [.bottomLeft, .bottomRight]))
                    SubHeadingView(heading: "Set Reading Time")
                    ZStack {
                        Circle()
                            .strokeBorder(Color.gray.opacity(0.2), lineWidth: 1)
                            .frame(height: reader.size.width - 50)
                        Circle()
                            .stroke(AngularGradient(
                                        gradient: Gradient(colors: [.pink, .purple, Color.gray.opacity(0.2)]),
                                        center: .center,
                                        startAngle: .degrees(-90),
                                        endAngle: .degrees(90)),
                                    style: StrokeStyle(lineWidth: 20,
                                                       lineCap: .round))
                            .shadow(radius: 4)
                            .frame(height: reader.size.width - 125)
                        Circle()
                            .stroke(Color.gray.opacity(0.8), style: StrokeStyle(lineWidth: 16, dash: [1, 20]))
                            .frame(height: reader.size.width - 200)
                        Text("3")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(.white) +
                            Text(" h")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    SubHeadingView(heading: "Reading Analysis")
                }
            }
            .background(Color("background"))
        }
    }
}

struct MyBooksView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases) {
            MyBooksView()
                .environment(\.colorScheme, $0)
        }
    }
}
