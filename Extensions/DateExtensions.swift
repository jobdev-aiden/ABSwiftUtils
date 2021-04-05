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

    public var year: UInt {
        return UInt(Calendar.current.component(.year, from: self))
    }

    public var month: UInt {
        return UInt(Calendar.current.component(.month, from: self))
    }

    public var day: UInt {
        return UInt(Calendar.current.component(.day, from: self))
    }

    public var week: UInt {
        return UInt(Calendar.current.component(.weekday, from: self))
    }

    public var hour: UInt {
        return UInt(Calendar.current.component(.hour, from: self))
    }

    public var minute: UInt {
        return UInt(Calendar.current.component(.minute, from: self))
    }

    public var second: UInt {
        return UInt(Calendar.current.component(.second, from: self))
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


#endif

