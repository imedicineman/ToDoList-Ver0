//
//  DetailView.swift
//  ToDoList
//
//  Created by Robert Delikat on 2/22/25.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    var passedValue: String
    var body: some View {
        VStack {
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You are a Swifty Legend!\nAnd you passed over the value \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer()
            //            Button("Back") {
            //                dismiss()
            //            }
            //            .buttonStyle(BorderedProminentButtonStyle())
        }
        .padding()
        //        .navigationBarBackButtonHidden()
    }
}

// There is a Quirk with "Preview panel: that needs to include what var is  passed. The value does not matter because it will be corrected when the call is made from 'List to detail
#Preview {
    DetailView(passedValue: "Item 1")
}
