//
//  NewEntryView.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 23/09/2020.
//

import SwiftUI

struct NewEntryView: View {
    
    @ObservedObject var viewModel: ViewModel
    @State private var title: String = ""
    @State private var bodyText: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Done") {
                    viewModel.addNewEntry(date: Date(), title: title, entry: bodyText)
                }
                .padding(.horizontal)
            }
            TextField("Enter a title", text: $title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            TextEditor(text: $bodyText)
                .border(Color.secondary, width: 1)
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct NewEntryView_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryView(viewModel: ViewModel())
    }
}
