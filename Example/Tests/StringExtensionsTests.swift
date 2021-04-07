import ABSwiftUtils
import XCTest


class StringExtensionsTests: XCTestCase {

    var today: Date?
    var fixedDate: Date?

    override func setUp() {
        super.setUp()

    }

    override func tearDown() {

        super.tearDown()
    }

    // MARK: - DateFormat
    func testToDate() {
        let from = "2021-04-01"
        let date = from.toDate("yyyy-MM-dd")
        XCTAssert(date?.toString("yyyy-MM-dd") == "2021-04-01", "")
    }

    //func testPerformanceExample() {
    //    self.measure() {
    //    }
    //}

}

