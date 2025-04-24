//
//  Bootcamp24.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 22.04.2025.
//

import SwiftUI

struct Bootcamp24: View {
    var body: some View {
        VStack {
            Button("Button") {
                
            }
            RoundedRectangle(cornerRadius: 26.0)
                .frame(width: 200, height: 100)
                .foregroundStyle(.tint)
                .overlay {
                    RoundedRectangle(cornerRadius: 26.0)
                        .stroke(.red, lineWidth: 2)
                }
        }
    }
}

#Preview {
    Bootcamp24()
}
