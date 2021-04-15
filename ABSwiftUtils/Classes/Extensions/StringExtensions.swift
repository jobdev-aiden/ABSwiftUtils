//
//  DateExtensions.swift
//  ABSwiftUtils
//

#if canImport(Foundation)
import Foundation


// MARK: - Character
extension String {

    public var isAlphaNumeric: Bool {
        let notAlphaNumeric = NSCharacterSet.decimalDigits.union(CharacterSet.letters).inverted
        return rangeOfCharacter(from: notAlphaNumeric, options: .literal, range: nil) == nil
    }

    public var isOnlyDigits: Bool {
        let notDigits = NSCharacterSet.decimalDigits.inverted
        return rangeOfCharacter(from: notDigits, options: .literal, range: nil) == nil
    }

    public var isOnlyLetters: Bool {
        let notLetters = NSCharacterSet.letters.inverted
        return rangeOfCharacter(from: notLetters, options: .literal, range: nil) == nil
    }

}


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

