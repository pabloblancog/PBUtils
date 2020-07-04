//
//  String+Utils.swift
//  PBUtils
//
//  Created by Pablo Blanco González on 19/04/2020.
//  Copyright © 2020 PabloBlanco. All rights reserved.
//

import Foundation

public extension String {
    
    static let dateFormatter = DateFormatter()

    func toDate(format: Date.Format = .defaultDate) -> Date? {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.date(from: self)
    }
    
    func toDateISO8601Full() -> Date? {
        let dateFormatter = Date.dateFormatter
        dateFormatter.dateFormat = Date.Format.iso8601.rawValue
        dateFormatter.calendar = Calendar(identifier: .iso8601)
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        return dateFormatter.date(from: self)
    }
    
    func isValidEmail() -> Bool {
        return count > 0 && NSPredicate(format: "self matches %@", "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,64}").evaluate(with: self)
    }
}
