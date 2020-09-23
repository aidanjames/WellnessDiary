//
//  ContentView.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 22/09/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        List {
            Button(action: { viewModel.createMockEntries() }) {
                Text("Add entry")
            }
            VStack(alignment: .leading) {
                ForEach(viewModel.entries) {
                    Text($0.title)
                    Text($0.entry)
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
