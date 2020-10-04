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
    @State private var showingViewExistingEntry = false
    @State private var entryIndex = 0
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.entries) { entry in
                    NavigationLink(
                        destination: ExistingEntryView(entry: entry),
                        label: {
                            EntryListView(entry: entry)
                        })
                }
                .onDelete(perform: delete)                
            }
            .fullScreenCover(isPresented: $showingAddEntry) {
                NewEntryView(viewModel: viewModel)
            }
            .navigationTitle(Text("Wellness diary"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
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
