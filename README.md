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
// today         : 2021-04-05 02:27:39 +0000

print("add 30 seconds: \(date.add(seconds: 30))")
// add 30 seconds: 2021-04-05 02:28:09 +0000

print("add 10 minutes: \(date.add(minutes: 10))")
// add 10 minutes: 2021-04-05 02:37:39 +0000

print("add 6 hours   : \(date.add(hours: 6))")
// add 6 hours   : 2021-04-05 08:27:39 +0000

print("add 5 days    : \(date.add(days: 5))")
// add 5 days    : 2021-04-10 02:27:39 +0000

print("add 4 weeks   : \(date.add(weeks: 4))")
// add 4 weeks   : 2021-05-03 02:27:39 +0000

print("add 1 months  : \(date.add(months: 1))")
// add 1 months  : 2021-05-05 02:27:39 +0000

print("add 1 years   : \(date.add(years: 1))")
// add 1 years   : 2022-04-05 02:27:39 +0000

print("add -1 years  : \(date.add(years: -1))")
// add -1 years  : 2020-04-05 02:27:39 +0000
```

### Compares

```swift
let date1 = Date()
var date2 = Date()
date2.addTimeInterval(60 * 60)

print(date1)
// ex) 2021-04-05 02:02:53 +0000
print(date2)
// ex) 2021-04-05 03:02:53 +0000

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
print(date.month
// ex) 4
print(date.day)
// ex) 5
print(date.week)
// ex) 2
print(date.hour)
// ex) 10
print(date.minute)
// ex) 53
print(date.second)
// ex) 24
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
// ex) 2021-04-05 Mon 10:53:24

print(date.toString("yyyy-MM-dd E HH:mm:ss", locale: "ko"))
// ex) 2021-04-05 월 10:53:24

print(date.toString("yyyy년 M월 d일 EEEE a h시 m분 s초"))
// ex) 2021년 4월 5일 Monday AM 10시 53분 24초

print(date.toString("yyyy년 M월 d일 EEEE a h시 m분 s초", locale: "ko"))
// ex) 2021년 4월 5일 월요일 오전 10시 53분 24초
```

### Misc

```swift
let str = "1975-09-16"
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"

let date1: Date = formatter.date(from: str)!
print("without midnightUTCDate(): \(date1), \(date1.year), \(date1.month), \(date1.day)")
// without midnightUTCDate(): 1975-09-15 15:00:00 +0000, 1975, 9, 16
print("without midnightUTCDate(): \(date1.toString(formatter.dateFormat))")
// without midnightUTCDate(): 1975-09-16

let date2: Date = formatter.date(from: str)!.midnightUTCDate()
print("with midnightUTCDate()   : \(date2), \(date2.year), \(date2.month), \(date2.day)")
// with midnightUTCDate()   : 1975-09-16 00:00:00 +0000, 1975, 9, 16
print("with midnightUTCDate()   : \(date2.toString(formatter.dateFormat))")
// with midnightUTCDate()   : 1975-09-16
```
