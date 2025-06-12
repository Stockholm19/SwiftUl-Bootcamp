//
//  Bootcamp40-DatePicker.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 12.06.2025.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    // Диапазон дат
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    // Форматер для отображения даты
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium // medium = Feb 8, 2021
        formatter.timeStyle = .none   // не показываем время
        return formatter
    }
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("SELECTED DATE IS:")
            
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: .date)
                .accentColor(.red)
                .datePickerStyle(WheelDatePickerStyle())
        }
        .padding()
    }
}

#Preview {
    DatePickerBootcamp()
}
