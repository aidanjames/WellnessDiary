//
//  ContentView.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 22/09/2020.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Button(action: { viewModel.createMockEntries() }) {
                Text("Add entry")
            }
            ForEach(viewModel.entries) {
                Text($0.title)
                Text($0.entry)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
