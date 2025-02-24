//
//  DetailView.swift
//  ToDoList
//
//  Created by Robert Delikat on 2/22/25.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {

            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You are a Swifty Legend!")
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


#Preview {
    DetailView()
}
