//
//  DetailView.swift
//  ToDoList
//
//  Created by Robert Delikat on 2/22/25.
//

import SwiftUI

struct DetailView: View {
    @State var toDo: String
    @Environment(\.dismiss) private var dismiss
    @State private var reminderIsOn = false
    //  @State private var dueDate = Date.now + 60*60*24 will work but added Calendar.current.date.... instead
    @State private var dueDate = Calendar.current.date(byAdding: .day, value: 1, to: Date.now)!
    @State private var notes = ""
    @State private var isCompleted = false
    
    var body: some View {
        List  {
            TextField("Enter todo Here", text: $toDo)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
                .listRowSeparator(.hidden)
            
            Toggle("Set Reminder", isOn: $reminderIsOn)
                .padding(.top)
                .listRowSeparator(.hidden)
            
            DatePicker("Date:", selection: $dueDate)
                .listRowSeparator(.hidden)
                .padding(.bottom)
                .disabled(!reminderIsOn) // only allowed if reminderIsOn
            
            Text("Notes:")
                .padding(.top)
            
            TextField("Notes", text: $notes, axis: .vertical) // Axis modifier allows Notes to expand vertically
                .textFieldStyle(.roundedBorder)
                .listRowSeparator(.hidden)
            
            
            Toggle("Completed", isOn: $isCompleted)
                .padding(.top)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .navigationBarBackButtonHidden()
        
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    //TODO: add save code here
                }
            }
        }
    }
}
// There is a Quirk with "Preview panel: that needs to include what var is  passed. The value does not matter because it will be corrected when the call is made from 'List to detail
#Preview {
    NavigationStack {
        DetailView(toDo: "")
    }
}
