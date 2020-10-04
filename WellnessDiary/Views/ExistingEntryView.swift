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
        VStack {
            Text(entry.entry)
                .font(.body)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(entry.title)
            }
        }
    }
}

struct ExistingEntryView_Previews: PreviewProvider {
    static var previews: some View {
        ExistingEntryView(entry: Entry(date: Date(), title: "This is it", entry: "This is my entry OK?"))
    }
}
