//
//  PersistenceManager.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 24/09/2020.
//

import Foundation

class PersistenceManager {
    
    static let shared = PersistenceManager()
    
    private init() { }
    
    
    func fetchEntries() -> [Entry] {
        if let entries: [Entry] = FileManager.default.fetchData(from: "Entries") {
            return entries
        }
        return []
    }
    
    
    func save(entries: [Entry]) {
        FileManager.default.writeData(entries, to: "Entries")
    }

    
}
