//
//  ExistingEntryView.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 23/09/2020.
//

import SwiftUI

struct ExistingEntryView: View {
    
    var entry: Entry
    
    var body: some View {
        VStack {
            Text(entry.title)
                .font(.largeTitle)
                .bold()
            Text(entry.entry)
                .font(.body)
        }
    }
}

struct ExistingEntryView_Previews: PreviewProvider {
    static var previews: some View {
        ExistingEntryView(entry: Entry(date: Date(), title: "This is it", entry: "This is my entry OK?"))
    }
}
