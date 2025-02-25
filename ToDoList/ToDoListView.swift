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
                 "Save the World",
                 "Take a Vacation"]
    @State private var sheetIsPresented = false
    var body: some View {
        NavigationStack {
            //Pass elements of an array that link to Detail view
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(toDo: toDo)
                    } label: {
                        Text(toDo)
                    }
                    .font(.title2)
                }
            }
            .navigationBarTitle("To-Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            
            //  .sheet(isPresented: $sheetIsPresented) { uses excess screen real estate instead of card-like overlay at the top of the screen
            .fullScreenCover(isPresented: $sheetIsPresented) {
                NavigationStack {
                    DetailView(toDo: "")
                }
            }
            // add + sign to upper trailing
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            
        }
    }
}
#Preview {
    ToDoListView()
}
