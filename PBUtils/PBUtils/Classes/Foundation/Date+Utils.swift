//
//  Date+Utils.swift
//  PBUtils
//
//  Created by Pablo Blanco González on 11/04/2020.
//  Copyright © 2020 PabloBlanco. All rights reserved.
//


import Foundation

public extension Date {
    
    static let dateFormatter = DateFormatter()
    static let calendar = Calendar.current
    
    /*
    E..EEE  Tue Abbreviated Day of week name, format style.
    EEEE    Tuesday Wide
    EEEEE   T   Narrow
    EEEEEE  Tu  Short
    */
    
    enum Format: String {
        case defaultDate = "HH:mm dd/MM/yyyy"
        case detailedTime = "HH:mm:ss"
        case time = "HH:mm"
        case timeAMPM = "HH:mm a"
        case literalDate = "EEEE, dd MMM yyyy"
        case weekday = "EEE"
        case weekdaySymbol = "EEEEE"
        case day = "dd"
        case iso8601 = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        case shortDate = "yyyy-MM-dd"
    }

    var dateComponents: DateComponents {
        let calendar = Date.calendar
        return calendar.dateComponents([.day, .month, .year], from: self)
    }
    
    var dateHashString: String? {
        guard let year = dateComponents.year, let month = dateComponents.month, let day = dateComponents.day else {
            return nil
        }
        return "\(year)\(month)\(day)"
    }
    
    var detailedTimeString: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.detailedTime.rawValue
        return dateFormatter.string(from: self)
    }
    
    var timeString: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.time.rawValue
        return dateFormatter.string(from: self)
    }

    var timeAMPMString: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.amSymbol = "AM"
        dateFormatter.pmSymbol = "PM"
        dateFormatter.dateFormat = Format.timeAMPM.rawValue
        return dateFormatter.string(from: self)
    }
    
    var dateString: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.literalDate.rawValue
        return dateFormatter.string(from: self)
    }
    
    var weekdayString: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.weekday.rawValue
        return dateFormatter.string(from: self)
    }
    
    var dayString: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.day.rawValue
        return dateFormatter.string(from: self)
    }

    var daySymbolString: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.weekdaySymbol.rawValue
        return dateFormatter.string(from: self)
    }
}

// Day checks
extension Date {
    
    func isSameDay(than date: Date) -> Bool {
        let calendar = Date.calendar
        return calendar.isDate(self, inSameDayAs: date)
    }

    func addingMinutes(minutes: Int) throws -> Date {
        let calendar = Date.calendar
        guard let date = calendar.date(byAdding: .minute, value: minutes, to: self) else {
            throw NSError(domain: "", code: 1, userInfo: nil)
        }
        return date
    }
    
    func addingHours(hours: Int) throws -> Date {
        return try addingMinutes(minutes: 60 * hours)
    }

    func addingDays(days: Int) throws -> Date {
        return try addingHours(hours: 24 * days)
    }
    
    var dateISO8601Full: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.iso8601.rawValue
        dateFormatter.calendar = Calendar(identifier: .iso8601)
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        return dateFormatter.string(from: self)
    }
    
    var dateISO8601FullEscaped: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.iso8601.rawValue
        dateFormatter.calendar = Calendar(identifier: .iso8601)
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        let formattedString = dateFormatter.string(from: self)
        return formattedString.replacingOccurrences(of: ":", with: "%3A")
    }
    
    var dateShortString: String {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Format.shortDate.rawValue
        return dateFormatter.string(from: self)
    }
    
    func isSameWeekday(_ weekday: Weekday) -> Bool {
        let calendar = Date.calendar
        return calendar.component(.weekday, from: self) == weekday.rawValue
    }
    
    func tomorrow() throws -> Date? {
        return try self.addingDays(days: 1)
    }
    
    func yesterday() throws -> Date? {
        return try self.addingDays(days: -1)
    }
    
    func nextSameDay() throws -> Date? {
        return try self.addingDays(days: 7)
    }
    
    var isToday: Bool {
        return isSameDay(than: Date())
    }

    func next(_ weekday: Weekday, direction: Calendar.SearchDirection = .forward, considerToday: Bool = false) -> Date {
        let calendar = Date.calendar
        let components = DateComponents(weekday: weekday.rawValue)

        if considerToday && calendar.component(.weekday, from: self) == weekday.rawValue {
            return self
        }

        return calendar.nextDate(after: self,
                                 matching: components,
                                 matchingPolicy: .nextTime,
                                 direction: direction)!
    }

    enum Weekday: Int {
        case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    }
}
