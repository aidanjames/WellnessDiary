//
//  ExistingEntryView.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 23/09/2020.
//

import SwiftUI

struct ExistingEntryView: View {
    
    var entry: Entry
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text(entry.entry)
                    .font(.body)
            }
            .navigationTitle(Text(entry.title))
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct ExistingEntryView_Previews: PreviewProvider {
    static var previews: some View {
        ExistingEntryView(entry: Entry(date: Date(), title: "This is it", entry: "This is my entry OK?"))
    }
}
