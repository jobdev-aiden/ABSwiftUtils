//
//  DateExtensions.swift
//  ABSwiftUtils
//

#if canImport(Foundation)
import Foundation


// MARK: - Add Components
extension Date {

    public func add(seconds: Int) -> Date {
        return self.addComponents(seconds: seconds)
    }

    public func add(minutes: Int) -> Date {
        return self.addComponents(minutes: minutes)
    }

    public func add(hours: Int) -> Date {
        return self.addComponents(hours: hours)
    }

    public func add(days: Int) -> Date {
        return self.addComponents(days: days)
    }

    public func add(weeks: Int) -> Date {
        return self.addComponents(weeks: weeks)
    }

    public func add(months: Int) -> Date {
        return self.addComponents(months: months)
    }

    public func add(years: Int) -> Date {
        return self.addComponents(years: years)
    }

    public func addComponents(
        seconds: Int = 0,
        minutes: Int = 0,
        hours: Int = 0,
        days: Int = 0,
        weeks: Int = 0,
        months: Int = 0,
        years: Int = 0
    ) -> Date {
        var components = DateComponents()
        components.second = seconds
        components.minute = minutes
        components.hour = hours
        components.day = days
        components.weekOfYear = weeks
        components.month = months
        components.year = years
        return Calendar.current.date(byAdding: components, to: self)!
    }

}


// MARK: - Compare
extension Date {

    public func isGreaterThan(_ date: Date) -> Bool {
        return (self.compare(date) == .orderedDescending)
    }

    public func isLessThan(_ date: Date) -> Bool {
        return (self.compare(date) == .orderedAscending)
    }

    public func isEqual(_ date: Date) -> Bool {
        return (self.compare(date) == .orderedSame)
    }

}


// MARK: - Components
extension Date {

    public var second: UInt {
        return UInt(Calendar.current.component(.second, from: self))
    }

    public var minute: UInt {
        return UInt(Calendar.current.component(.minute, from: self))
    }

    public var hour: UInt {
        return UInt(Calendar.current.component(.hour, from: self))
    }

    public var week: UInt {
        return UInt(Calendar.current.component(.weekday, from: self))
    }

    public var day: UInt {
        return UInt(Calendar.current.component(.day, from: self))
    }

    public var month: UInt {
        return UInt(Calendar.current.component(.month, from: self))
    }

    public var year: UInt {
        return UInt(Calendar.current.component(.year, from: self))
    }

}


// MARK: - Difference
extension Date {

    public func diffSeconds(_ date: Date) -> Int {
        let components = Calendar.current.dateComponents([.second], from: self, to: date)
        return components.second!
    }

    public func diffMinutes(_ date: Date) -> Int {
        let components = Calendar.current.dateComponents([.minute], from: self, to: date)
        return components.minute!
    }

    public func diffHours(_ date: Date) -> Int {
        let components = Calendar.current.dateComponents([.hour], from: self, to: date)
        return components.hour!
    }

    public func diffDays(_ date: Date) -> Int {
        let components = Calendar.current.dateComponents([.day], from: self, to: date)
        return components.day!
    }

    public func diffWeeks(_ date: Date) -> Int {
        let components = Calendar.current.dateComponents([.weekOfYear], from: self, to: date)
        return components.weekOfYear!
    }

    public func diffMonths(_ date: Date) -> Int {
        let components = Calendar.current.dateComponents([.month], from: self, to: date)
        return components.month!
    }

    public func diffYears(_ date: Date) -> Int {
        let components = Calendar.current.dateComponents([.year], from: self, to: date)
        return components.year!
    }

}


// MARK: - Format
extension Date {

    public func toString(_ format: String, locale: String = "") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        if locale.count > 0 {
            formatter.locale = Locale(identifier: locale)
        }
        return formatter.string(from: self)
    }

}


// MARK: - Misc
extension Date {

    public func midnightUTCDate() -> Date {
        var components = Calendar.current.dateComponents([.year, .month, .day], from: self)
        components.hour = 0
        components.minute = 0
        components.second = 0
        components.nanosecond = 0
        return Calendar.current.date(from: components)!
    }

}


#endif

