//
//  Entry.swift
//  WellnessDiary
//
//  Created by Aidan Pendlebury on 22/09/2020.
//

import Foundation

struct Entry: Identifiable, Codable {
    var id = UUID()
    var date: Date
    var title: String
    var entry: String
}
