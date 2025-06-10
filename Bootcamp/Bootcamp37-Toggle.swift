//
//  Bootcamp37-Toggle.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 10.06.2025.
//

import SwiftUI

struct Bootcamp37_Toggle: View {
    
    @State private var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Режим")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                Spacer()
                
                Text(toggleIsOn ? "Онлайн" : "Оффлайн")
                    .font(.system(size: 30))
                    .foregroundColor(toggleIsOn ? .green : .red)
            }
            
            Toggle(isOn: $toggleIsOn) {
                Text("Переключатель")
                    .foregroundColor(.black)
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))
        }
        .padding(.horizontal, 80)
        Spacer()
            
    }
}

#Preview {
    Bootcamp37_Toggle()
}
