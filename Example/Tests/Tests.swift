import ABSwiftUtils
import XCTest


class Tests: XCTestCase {

    var today: Date?
    var fixedDate: Date?

    override func setUp() {
        super.setUp()

        today = Date()

        var components = DateComponents()
        components.year = 2021
        components.month = 4
        components.day = 1
        components.hour = 14
        components.minute = 30
        components.second = 10
        components.calendar = Calendar.current
        fixedDate = components.date
    }

    override func tearDown() {
        today = nil
        fixedDate = nil

        super.tearDown()
    }

    // MARK: - Add Components
    func testAddSecond() {
        let date = fixedDate?.add(seconds: 10)
        XCTAssert(date?.second == 20, "Second should be 20")
    }

    func testAddMinute() {
        let date = fixedDate?.add(minutes: 10)
        XCTAssert(date?.minute == 40, "Minute should be 40")
    }

    func testAddHour() {
        let date = fixedDate?.add(hours: 1)
        XCTAssert(date?.hour == 15, "Hour should be 15")
    }

    func testAddWeek() {
        let date = fixedDate?.add(weeks: 7)
        XCTAssert(date?.week == 5, "Week should be 5")
    }

    func testAddDay() {
        let date = fixedDate?.add(days: 10)
        XCTAssert(date?.day == 11, "Day should be 11")
    }

    func testAddMonth() {
        let date = fixedDate?.add(months: 1)
        XCTAssert(date?.month == 5, "Month should be 5")
    }

    func testAddYear() {
        let date = fixedDate?.add(years: -1)
        XCTAssert(date?.year == 2020, "Year should be 2020")
    }

    func testAddComponents() {
        let date = fixedDate?.addComponents(seconds: 10, minutes: 10, hours: 5, days: 1, months: 1, years: -1)
        XCTAssert(
            1 == 1 &&
                date!.second == 20 &&
                date!.minute == 40 &&
                date!.hour == 19 &&
                date!.day == 2 &&
                date!.month == 5 &&
                date!.year == 2020 &&
                date!.toString("yyyy-MM-dd HH:mm:ss") == "2020-05-02 19:40:20",
            "Date should be 2020-05-02 19:40:20"
        )
    }

    // MARK: - Compare
    func testIsGreatherThan() {
        let now = Date()
        let new = now.add(days: 1)
        let isGreather = new.isGreaterThan(now)
        XCTAssert(isGreather == true, "New should be greater than Now")
    }

    func testIsLessThan() {
        let now = Date()
        let new = now.add(days: 1)
        let isLess = now.isLessThan(new)
        XCTAssert(isLess == true, "Now should be less than New")
    }

    func testIsEqual() {
        let now = Date()
        let new = now.add(seconds: 1)
        let isEqual = now.isEqual(new)
        XCTAssert(isEqual != true, "Now should not be equal to New")
    }

    // MARK: - Components
    func testSecondComponent() {
        var second: UInt = 0
        if let date = fixedDate {
            second = date.second
        }
        XCTAssert(second == 10, "Second should be 10")
    }

    func testMinuteComponent() {
        var minute: UInt = 0
        if let date = fixedDate {
            minute = date.minute
        }
        XCTAssert(minute == 30, "Minute should be 30")
    }

    func testHourComponent() {
        var hour: UInt = 0
        if let date = fixedDate {
            hour = date.hour
        }
        XCTAssert(hour == 14, "Hour should be 14")
    }

    func testWeekComponent() {
        var week: UInt = 0
        if let date = fixedDate {
            week = date.week
        }
        XCTAssert(week == 5, "Week should be 5")
    }

    func testDayComponent() {
        var day: UInt = 0
        if let date = fixedDate {
            day = date.day
        }
        XCTAssert(day == 1, "Day should be 1")
    }

    func testMonthComponent() {
        var month: UInt = 0
        if let date = fixedDate {
            month = date.month
        }
        XCTAssert(month == 4, "Month should be 4")
    }

    func testYearComponent() {
        var year: UInt = 0
        if let date = fixedDate {
            year = date.year
        }
        XCTAssert(year == 2021, "Year should be 2021")
    }

    // MARK: - Difference
    func testDiffSeconds() {
        let test = today?.add(minutes: 1)
        let diffSec = today?.diffSeconds(test!)
        XCTAssert(diffSec == 60, "There should be 60 seconds differences today and test")
    }

    func testDiffMinutes() {
        let test = today?.add(seconds: 60)
        let diffMin = today?.diffMinutes(test!)
        XCTAssert(diffMin == 1, "There should be 1 minutes differences today and test")
    }

    func testDiffHours() {
        let test = today?.add(days: 1)
        let diffHours = today?.diffHours(test!)
        XCTAssert(diffHours == 24, "There should be 24 hours differences today and test")
    }

    func testDiffDays() {
        let test = today?.add(weeks: 1)
        let diffDays = today?.diffDays(test!)
        XCTAssert(diffDays == 7, "There should be 7 days differences today and test")
    }

    func testDiffWeeks() {
        let test = today?.add(days: 15)
        let diffWeeks = today?.diffWeeks(test!)
        XCTAssert(diffWeeks == 2, "There should be 2 weeks differences today and test")
    }

    func testDiffMonths() {
        let test = today?.add(days: 70)
        let diffMon = today?.diffMonths(test!)
        XCTAssert(diffMon == 2, "There should be 2 months differences today and test")
    }

    func testDiffYears() {
        let test = today?.add(months: 26)
        let diffYears = today?.diffYears(test!)
        XCTAssert(diffYears == 2, "There should be 2 years differences today and test")
    }

    //func testPerformanceExample() {
    //    self.measure() {
    //    }
    //}

}

