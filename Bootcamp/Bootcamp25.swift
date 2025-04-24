//
//  Bootcamp25.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 22.04.2025.
//

import SwiftUI

struct Bootcamp25: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.easeInOut(duration: 1.0)) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 0.0 : 26.0)
                .fill(isAnimated ? .red : .blue)
                .frame(
                    width: isAnimated ? 100 : 200,
                    height: isAnimated ? 100 : 200
                )
                .offset(
                    y: isAnimated ? 300 : 0
                )
            
            Spacer()
        }
    }
}

#Preview {
    Bootcamp25()
}
