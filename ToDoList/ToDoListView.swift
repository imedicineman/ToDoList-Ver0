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
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
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
