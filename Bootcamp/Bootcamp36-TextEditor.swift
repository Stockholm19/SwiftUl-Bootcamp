//
//  Bootcamp36-TextEditor.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 10.06.2025.
//

import SwiftUI

struct Bootcamp36_TextEditor: View {
    
    @State private var textEditorText: String = "Это пример текста в TextEditor. Просто начни печатать."
    @State private var savedText: String = ""
    
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                        .scrollContentBackground(.hidden) // убираю стандартный фон
                        .background(Color.gray.opacity(0.2)) // задаю свой
                        .foregroundStyle(.black) // ну и цвет текста
                        .cornerRadius(10)
                
                Button(action: {
                    switch textEditorText.isEmpty {
                    case true:
                        print("TextEditor is empty")
                    case false:
                        savedText = textEditorText
                        textEditorText = ""
                        print("Text saved: \(savedText)")
                    }
                }, label: {
                    Text("Save".uppercased())
                        .frame(maxWidth: .infinity)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .font(.headline)
                })
                Text("Saved text: \(savedText)")
                    .padding()
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextEditor Example")
        }
    }
}

#Preview {
    Bootcamp36_TextEditor()
}
