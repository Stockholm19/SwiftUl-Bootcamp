//
//  Bootcamp37-Picker.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 11.06.2025.
//

import SwiftUI

struct Bootcamp37_Picker: View {
    
    @State private var selectedItem: Int = 0
    
    var body: some View {
        VStack {
            
            
            
            HStack {
                Text("Filter:")
                Text("\(selectedItem)")
            }
            .padding(.horizontal)
            .font(.system(size: 30))
            .background(Color.blue.opacity(0.8))
            .shadow(color: .blue, radius: 10, x: 0, y: 10)

            .foregroundColor(.white)
            .cornerRadius(10)
            
                        
            Picker("Возраст", selection: $selectedItem) {
                ForEach(0..<100) { age in
                    Text("\(age)").tag(age)
                }
            }
            .pickerStyle(.wheel)
        }
    }
    
    private var ageText: String {
        let remainder10 = selectedItem % 10
        let remainder100 = selectedItem % 100
        
        if remainder100 >= 11 && remainder100 <= 14 {
            return "\(selectedItem) лет"
        } else if remainder10 == 1 {
            return "\(selectedItem) год"
        } else if remainder10 >= 2 && remainder10 <= 4 {
            return "\(selectedItem) года"
        } else {
            return "\(selectedItem) лет"
        }
    }
}

#Preview {
    Bootcamp37_Picker()
}
