//
//  Bootcamp34-ContextMenu.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 26.04.2025.
//

import SwiftUI

struct Bootcamp34_ContextMenu: View {
    
    @State var cardBackgroundColor: Color = .cyan
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Hello, world!")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
                
        }
        .foregroundColor(.white)
        .padding(30)
        .background(cardBackgroundColor.cornerRadius(20))
        .contextMenu {
            contextMenuButtons()
        }
    }
    
    private func contextMenuButtons() -> some View {
        Group {
            Button("Edit", systemImage: "pencil") {
                print("Edit")
                cardBackgroundColor = .orange
            }
            Button("Delete", systemImage: "trash") {
                print("Delete")
                cardBackgroundColor = .red
                
            }
            Button("Share", systemImage: "square.and.arrow.up") {
                print("Share")
                cardBackgroundColor = .blue
            }
        }
        
    }
}

#Preview {
    Bootcamp34_ContextMenu()
}
