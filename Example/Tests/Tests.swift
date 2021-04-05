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
            1 == 1
                && date!.second == 20
                && date!.minute == 40
                && date!.hour == 19
                && date!.day == 2
                && date!.month == 5
                && date!.year == 2020
                && date!.toString("yyyy-MM-dd HH:mm:ss") == "2020-05-02 19:40:20",
            "Date should be 2020-05-02 19:40:20"
        )
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

    //func testPerformanceExample() {
    //    self.measure() {
    //    }
    //}

}

