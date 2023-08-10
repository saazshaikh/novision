//
//  NovisionManager.swift
//  Novision
//
//  Created by Saaz Shaikh on 08/08/2023.
//

import Foundation

class NovisionManager: ObservableObject {
    func component(_ component: Calendar.Component, from date: Date) -> Int {
        return Calendar.current.component(.hour, from: date)
    }

    struct reminderTimes: Identifiable, Codable {
        var id = UUID ()
        
        var mondayReminder = Date(timeIntervalSinceNow: 60 * 60 * 4 + 24 * 60)
        var tuesdayReminder = Date(timeIntervalSinceNow: 60 * 60 * 4 + 24 * 60)
        var wednesdayReminder = Date(timeIntervalSinceNow: 60 * 60 * 4 + 24 * 60)
        var thursdayReminder = Date(timeIntervalSinceNow: 60 * 60 * 4 + 24 * 60)
        var fridayReminder = Date(timeIntervalSinceNow: 60 * 60 * 4 + 24 * 60)
        var saturdayReminder = Date(timeIntervalSinceNow: 60 * 60 * 4 + 24 * 60)
        var sundayReminder = Date(timeIntervalSinceNow: 60 * 60 * 4 + 24 * 60)
        
    }
}
