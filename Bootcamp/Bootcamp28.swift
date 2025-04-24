//
//  Bootcamp28.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 22.04.2025.
//

import SwiftUI

struct Bootcamp28: View {
    @State private var showSheet: Bool = false

    var body: some View {
        
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            
            })

        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
           
            
            
        }
    }
}



#Preview {
    Bootcamp28()
}
