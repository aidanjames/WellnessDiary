//
//  EntryListView.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 27/09/2020.
//

import SwiftUI

struct EntryListView: View {
    
    var entry: Entry
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(entry.title)
            Text(entry.entry)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .background(Color.blue)
    }
}

struct EntryListView_Previews: PreviewProvider {
    static var previews: some View {
        EntryListView(entry: Entry(date: Date(), title: "My entry title", entry: "My entry body text"))
    }
}
