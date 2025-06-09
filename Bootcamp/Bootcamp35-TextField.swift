//
//  Bootcamp35-TextField.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 09.06.2025.
//

import SwiftUI

struct Bootcamp35_TextField: View {
    
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []
    
    var body: some View {
        
        NavigationStack {
            VStack {
                TextField("Type something...", text: $textFieldText)
                    .padding()
                    .background(Color(.gray).opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .font(.headline)
                
                Button (action: {
                    if textIsAppropriate() {
                        saveText()
                        textFieldText = ""
                    } else {
                        print("Text is not appropriate")
                    }
                }, label: {
                    Text("Save".uppercased())
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Example")

        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            return false
        }
        return true
    }
    
    func saveText() {
        dataArray.append(textFieldText)
    }
    
}

#Preview {
    Bootcamp35_TextField()
}
