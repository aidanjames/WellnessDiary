//
//  ViewModel.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 22/09/2020.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var entries: [Entry] = []
    
    init() {
        loadEntries()
    }
    
    
    // Get rid of this once persistence has been implemented.
    func createMockEntries() {
        let newEntry1 = Entry(date: Date(), title: "My first entry", entry: "There's not much to say really. Just a normal entry")
        let newEntry2 = Entry(date: Date(), title: "My second entry", entry: "There's not much to say really. Just a normal entry")
        let newEntry3 = Entry(date: Date(), title: "My third entry", entry: "There's not much to say really. Just a normal entry")

        entries = [newEntry1, newEntry2, newEntry3]
    }
    
    
    func addNewEntry(date: Date?, title: String?, entry: String) {
        let newEntry = Entry(date: date ?? Date(), title: title ?? "Unknown", entry: entry)
        entries.append(newEntry)
        saveEntries()
    }
    
    
    func saveEntries() {
        PersistenceManager.shared.save(entries: entries)
    }
    
    
    func loadEntries() {
        entries = PersistenceManager.shared.fetchEntries()
    }
}
