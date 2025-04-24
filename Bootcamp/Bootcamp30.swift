//
//  Bootcamp30.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 24.04.2025.
//

import SwiftUI

struct Bootcamp30: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ScrollView {
                    NavigationLink("Hello, world!",
                                   destination: Text("Hello, world!"))
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                .navigationBarItems(
                    leading:
                        HStack {
                            Image(systemName: "person.fill")
                            Image(systemName: "flame.fill")
                        }
                ,
                trailing:
                    NavigationLink(
                        destination: Text("Hello, world!"),
                        label: {
                            Image(systemName: "gear")
                        }
                    )
                )
                    
            }
            .navigationTitle("Navigation Title")
        }
    }
}

#Preview {
    Bootcamp30()
}
