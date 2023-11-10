//
//  Reminder.swift
//  MakeItSo
//
//  Created by Giuseppe Vacatello on 10/11/23.
//

import Foundation

struct Reminder: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted = false
}

extension Reminder {
    static let samples = [
        Reminder(title: "Build sample app", isCompleted: true),
        Reminder(title: "Create tutorial"),
        Reminder(title: "???"),
        Reminder(title: "PROFIT!")
    ]
}
