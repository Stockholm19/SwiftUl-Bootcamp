//
//  Bootcamp31.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 25.04.2025.
//

import SwiftUI

struct Bootcamp31: View {
    
    @State var fruit: [String] = ["Apple", "Banana", "Orange", "Peach", "Mango"]
    
    @State var vegetables: [String] =
    [
        "Potato",
        "Tomato",
        "Carrot",
        "Cucumber",
        "Onion"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header:
                    HStack{
                        Text("FRUITS").foregroundStyle(Color.purple).headerProminence(.increased)
                        Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundStyle(Color.red)
                ){
                    ForEach(fruit, id: \.self) { item in
                        Text(item.capitalized)
                            .foregroundStyle(.white)
                            .font(.headline)
                            .padding(.vertical)
                            .listRowBackground(Color.blue)
                            
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    
                }
                
                Section(header: Text("VEGETABLES").foregroundStyle(Color.purple).headerProminence(.increased)) {
                    ForEach(vegetables, id: \.self) { item in
                        Text(item)
                            .background(Color.green)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Список покупок")
            .navigationBarItems(
                leading: EditButton().foregroundColor(.red),
                trailing: addButton.foregroundColor(.red)
            )
            .accentColor(.purple)
        }
        
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(at indexSet: IndexSet) {
        indexSet.forEach { index in
            fruit.remove(at: index)
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruit.move(fromOffsets: source, toOffset: destination)
    }
    
    func add() {
        fruit.append("New Fruit")
    }
}

#Preview {
    Bootcamp31()
}
