# ABSwiftUtils

[![CI Status](https://img.shields.io/travis/jobdev-aiden/ABSwiftUtils.svg?style=flat)](https://travis-ci.org/github/jobdev-aiden/abswiftutils)
[![Version](https://img.shields.io/cocoapods/v/ABSwiftUtils.svg?style=flat)](https://cocoapods.org/pods/ABSwiftUtils)
[![License](https://img.shields.io/cocoapods/l/ABSwiftUtils.svg?style=flat)](https://cocoapods.org/pods/ABSwiftUtils)
[![Platform](https://img.shields.io/cocoapods/p/ABSwiftUtils.svg?style=flat)](https://cocoapods.org/pods/ABSwiftUtils)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ABSwiftUtils is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'ABSwiftUtils'
```

## DateExtensions

### Add Components

```swift
let date = Date()
print("today         : \(date)")
// today         : 2021-04-05 02:25:30 +0000

print("add 30 seconds: \(date.add(seconds: 30))")
// add 30 seconds: 2021-04-05 02:26:00 +0000

print("add 10 minutes: \(date.add(minutes: 10))")
// add 10 minutes: 2021-04-05 02:35:30 +0000

print("add 6 hours   : \(date.add(hours: 6))")
// add 6 hours   : 2021-04-05 08:25:30 +0000

print("add 5 days    : \(date.add(days: 5))")
// add 5 days    : 2021-04-10 02:25:30 +0000

print("add 4 weeks   : \(date.add(weeks: 4))")
// add 4 weeks   : 2021-05-03 02:25:30 +0000

print("add 1 months  : \(date.add(months: 1))")
// add 1 months  : 2021-05-05 02:25:30 +0000

print("add 1 years   : \(date.add(years: 1))")
// add 1 years   : 2022-04-05 02:25:30 +0000

print("add -1 years  : \(date.add(years: -1))")
// add -1 years  : 2020-04-05 02:25:30 +0000
```

### Compares

```swift
let date1 = Date()
var date2 = Date()
date2.addTimeInterval(60 * 60)

print(date1)
// ex) 2021-04-05 02:25:30 +0000
print(date2)
// ex) 2021-04-05 03:25:30 +0000

print(date1.isEqual(date2))
// false
print(date1.isGreaterThan(date2))
// false
print(date1.isLessThan(date2))
// true
```

### Components

```swift
let date = Date()

print(date.year)
// ex) 2021
print(date.month)
// ex) 4
print(date.day)
// ex) 5
print(date.week)
// ex) 2
print(date.hour)
// ex) 2
print(date.minute)
// ex) 25
print(date.second)
// ex) 30
```

### Difference

```swift
let date1 = Date()
var date2 = Date()
date2.addTimeInterval(60 * 60 * 24 * 365)

let seconds2 = date2.diffSeconds(date1)
print("seconds2: \(seconds2)")
// seconds2: -31536000

let seconds = date1.diffSeconds(date2)
print("seconds : \(seconds)")
// seconds : 31536000

let minutes = date1.diffMinutes(date2)
print("minutes : \(minutes)")
// minutes : 525600

let hours = date1.diffHours(date2)
print("hours   : \(hours)")
// hours   : 8760

let days = date1.diffDays(date2)
print("days    : \(days)")
// days    : 365

let weeks = date1.diffWeeks(date2)
print("weeks   : \(weeks)")
// weeks   : 52

let months = date1.diffMonths(date2)
print("months  : \(months)")
// months  : 12

let years = date1.diffYears(date2)
print("years   : \(years)")
// years   : 1
```

### Format

```swift
let date = Date()

print(date.toString("yyyy-MM-dd E HH:mm:ss"))
// ex) 2021-04-05 Mon 02:25:30

print(date.toString("yyyy-MM-dd E HH:mm:ss", locale: "ko"))
// ex) 2021-04-05 월 02:25:30

print(date.toString("yyyy년 M월 d일 EEEE a h시 m분 s초"))
// ex) 2021년 4월 5일 Monday AM 2시 25분 30초

print(date.toString("yyyy년 M월 d일 EEEE a h시 m분 s초", locale: "ko"))
// ex) 2021년 4월 5일 월요일 오전 2시 25분 30초
```

### Misc

```swift
let str = "1975-09-16 16:30:30"
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

let date1: Date = formatter.date(from: str)!
print("without midnightUTCDate(): \(date1), \(date1.year), \(date1.month), \(date1.day)")
// without midnightUTCDate(): 1975-09-16 07:30:30 +0000, 1975, 9, 16
print("without midnightUTCDate(): \(date1.toString(formatter.dateFormat))")
// without midnightUTCDate(): 1975-09-16 16:30:30

let date2: Date = formatter.date(from: str)!.midnightUTCDate()
print("with midnightUTCDate()   : \(date2), \(date2.year), \(date2.month), \(date2.day)")
// with midnightUTCDate()   : 1975-09-15 15:00:00 +0000, 1975, 9, 16
print("with midnightUTCDate()   : \(date2.toString(formatter.dateFormat))")
// with midnightUTCDate()   : 1975-09-16 00:00:00
```

## StringExtensions

### Character

```swift
let str1 = "abc123"
print("\"\(str1)\".isAlphaNumberic: \(str1.isAlphaNumeric)")    // true
print("\"\(str1)\".isOnlyDigits   : \(str1.isOnlyDigits)")      // false
print("\"\(str1)\".isOnlyLetters  : \(str1.isOnlyLetters)")     // false
print("-----")

let str2 = "abc123가나다"
print("\"\(str2)\".isAlphaNumberic: \(str2.isAlphaNumeric)")    // true
print("\"\(str2)\".isOnlyDigits   : \(str2.isOnlyDigits)")      // false
print("\"\(str2)\".isOnlyLetters  : \(str2.isOnlyLetters)")     // false
print("-----")

let str3 = "가나다123"
print("\"\(str3)\".isAlphaNumberic: \(str3.isAlphaNumeric)")    // true
print("\"\(str3)\".isOnlyDigits   : \(str3.isOnlyDigits)")      // false
print("\"\(str3)\".isOnlyLetters  : \(str3.isOnlyLetters)")     // false
print("-----")

let str4 = "abc123---"
print("\"\(str4)\".isAlphaNumberic: \(str4.isAlphaNumeric)")    // false
print("\"\(str4)\".isOnlyDigits   : \(str4.isOnlyDigits)")      // false
print("\"\(str4)\".isOnlyLetters  : \(str4.isOnlyLetters)")     // false
print("-----")

let str5 = "1234567890"
print("\"\(str5)\".isAlphaNumberic: \(str5.isAlphaNumeric)")    // true
print("\"\(str5)\".isOnlyDigits   : \(str5.isOnlyDigits)")      // true
print("\"\(str5)\".isOnlyLetters  : \(str5.isOnlyLetters)")     // false
print("-----")

let str6 = "abcdef"
print("\"\(str6)\".isAlphaNumberic: \(str6.isAlphaNumeric)")    // true
print("\"\(str6)\".isOnlyDigits   : \(str6.isOnlyDigits)")      // false
print("\"\(str6)\".isOnlyLetters  : \(str6.isOnlyLetters)")     // true
print("-----")

let str7 = "abc가나다"
print("\"\(str7)\".isAlphaNumberic: \(str7.isAlphaNumeric)")    // true
print("\"\(str7)\".isOnlyDigits   : \(str7.isOnlyDigits)")      // false
print("\"\(str7)\".isOnlyLetters  : \(str7.isOnlyLetters)")     // true
print("-----")
```

### DateFormat

```swift
let from: String = "2021-04-01"
print("from: \(from) - type: \(type(of: from))")
// from: 2021-04-01 - type: String

let date: Date = from.toDate("yyyy-MM-dd")!
print("date: \(date) - type: \(type(of: date))")
// date: 2021-03-31 15:00:00 +0000 - type: Date

let to: String = date.toString("yyyy-MM-dd")
print("to  : \(to) - type: \(type(of: to))")
// to  : 2021-04-01 - type: String
```

### Validation

```swift
let email1 = "abcd@abc.com"
print("\"\(email1.isEmail)\".: \(email1.isEmail)")  // true

let email2 = "abcd@abc"
print("\"\(email2.isEmail)\".: \(email2.isEmail)")  // false

let email3 = "abcd@abc."
print("\"\(email3.isEmail)\".: \(email3.isEmail)")  // false

let email4 = "abcd@a.c"
print("\"\(email4.isEmail)\".: \(email4.isEmail)")  // false
```

