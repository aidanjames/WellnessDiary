//
//  ContentView.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 22/09/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    @State private var showingAddEntry = false
    
    var body: some View {
        List {
            Button(action: {
                showingAddEntry.toggle()
            }) {
                Text("Add entry")
                    .foregroundColor(.blue)
            }
            .sheet(isPresented: $showingAddEntry) {
                NewEntryView(viewModel: viewModel)
            }
            VStack(alignment: .leading) {
                ForEach(viewModel.entries) { entry in
                    Text(entry.title)
                    Text(entry.entry)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
