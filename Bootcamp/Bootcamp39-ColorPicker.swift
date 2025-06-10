//
//  Bootcamp39-ColorPicker.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 10.06.2025.
//

import SwiftUI

struct Bootcamp39_ColorPicker: View {
    
    @State private var backgroundColor: Color = .blue
    
    var body: some View {
        
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Выберите цвет",
                        selection: $backgroundColor,
                        supportsOpacity: true)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                .padding(50)
            
        }
        
    }
}

#Preview {
    Bootcamp39_ColorPicker()
}
