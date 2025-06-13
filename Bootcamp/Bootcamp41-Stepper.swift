//
//  Bootcamp41-Stepper.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 13.06.2025.
//

import SwiftUI

struct Bootcamp41_Stepper: View {
    
    @State private var stepCount: Int = 0
    @State private var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 20) {
            
            // MARK: - Stepper для счетчика шагов
            Stepper(
                "Количество шагов: \(stepCount)",
                value: $stepCount,
                in: 0...100,
                step: 1
            )
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.8))
                .frame(height: 50)
                .overlay(
                    Text("Текущий счетчик: \(stepCount)")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                )
            
            // MARK: - Stepper для widthIncrement
            Text("Текущий widthIncrement: \(Int(widthIncrement))")
                .font(.title2)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.green.opacity(0.8))
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Изменить widthIncrement") {
                widthIncrement += 10
            } onDecrement: {
                widthIncrement -= 10
            }
        }
        .padding()
    }
}

#Preview {
    Bootcamp41_Stepper()
}
