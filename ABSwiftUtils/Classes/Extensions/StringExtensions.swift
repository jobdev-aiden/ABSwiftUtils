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


// MARK: - Validation
extension String {

    public var isEmail: Bool {
        return matches(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")
    }

    func matches(pattern: String) -> Bool {
        return range(of: pattern, options: String.CompareOptions.regularExpression, range: nil, locale: nil) != nil
    }

}


#endif

