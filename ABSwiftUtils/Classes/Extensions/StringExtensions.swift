//
//  DateExtensions.swift
//  ABSwiftUtils
//

#if canImport(Foundation)
import Foundation


// MARK: - DateFormat
extension String {

    public func toDate(_ format: String, locale: String = Locale.current.identifier) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = Locale(identifier: locale)
        return formatter.date(from: self) ?? nil
    }

}


#endif

