//
//  Bootcamp27.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 22.04.2025.
//

import SwiftUI

struct Bootcamp27: View {
    @State private var showView: Bool = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }

                Spacer()
            }

            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom)
                    ))
            }
        }
        .animation(.easeIn, value: showView)
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    Bootcamp27()
}
