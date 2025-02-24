//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Robert Delikat on 2/22/25.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Build apps",
                 "Save the world",
                 "Make a sandwich",
                 "Take a Vacation"]
    
    var body: some View {
        NavigationStack {
            //Setup a list of item numbers 0-99 that link to Detail view
            List {
                ForEach(0..<100, id: \.self) { number in
                    NavigationLink {
                        DetailView(passedValue: "Item\(number)")
                    } label: {
                        Text("Item \(number)")
                    }
                }
            }
            .navigationBarTitle("To-Do List")
            .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
}
#Preview {
    ToDoListView()
}
