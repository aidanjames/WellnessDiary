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
        NavigationView {
            List {
                VStack(alignment: .leading) {
                    ForEach(viewModel.entries) { entry in
                        Text(entry.title)
                        Text(entry.entry)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .onDelete(perform: delete)
                }
                .fullScreenCover(isPresented: $showingAddEntry) {
                    NewEntryView(viewModel: viewModel)
                }
            }
            .navigationTitle(Text("Wellness diary"))
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Add") {
                        showingAddEntry.toggle()
                    }
                }
            }
        }
        
    }
    
    func delete(at offsets: IndexSet) {
        viewModel.entries.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
