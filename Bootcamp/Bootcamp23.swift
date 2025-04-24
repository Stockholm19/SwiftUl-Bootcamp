//
//  Bootcamp23.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 21.04.2025.
//

import SwiftUI

struct Bootcamp23: View {
    @State var showCircle: Bool = false
        @State var showRectangle: Bool = false
        @State var isLoading: Bool = false

        var body: some View {
            VStack(spacing: 20) {
                Button("IS LOADING: $isLoading.description)") {
                    isLoading.toggle()
                }

                if isLoading {
                    ProgressView()
                }
//            Button("Rectangle Button: $showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 26.0)
//                    .frame(width: 200, height: 100)
//            }

            Spacer()
        }
    }
}


#Preview {
    Bootcamp23()
}
