//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Robert Delikat on 2/22/25.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Image(systemName: "eye")

                    Text("Show the New View")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                }
                .buttonStyle(BorderedProminentButtonStyle())
            }
            .padding()
        }
    }
}
#Preview {
    ToDoListView()
}
