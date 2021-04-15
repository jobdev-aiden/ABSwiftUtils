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

    // MARK: - Character
    func testIsAlphaNumeric() {
        let str = "abc123"
        XCTAssert(str.isAlphaNumeric == true, "String contains only alphabets and numerics")
    }

    func testIsAlphaNumeric2() {
        let str = "abc123가나다"
        XCTAssert(str.isAlphaNumeric == true, "String contains only alphabets and numerics")
    }

    func testIsAlphaNumeric3() {
        let str = "abc123--"
        XCTAssert(str.isAlphaNumeric == false, "String does not just contains alphabets and numerics")
    }

    func testIsAlphaNumeric4() {
        let str = "abc123가나다."
        XCTAssert(str.isAlphaNumeric == false, "String does not just contains alphabets and numerics")
    }

    func testIsOnlyDigits() {
        let str = "1234567890"
        XCTAssert(str.isOnlyDigits == true, "String contains only digits")
    }

    func testIsOnlyDigits2() {
        let str = "12345-67890"
        XCTAssert(str.isOnlyDigits == false, "String does not just contains digits")
    }

    func testIsOnlyLetters() {
        let str = "abc"
        XCTAssert(str.isOnlyLetters == true, "String contains only letters")
    }

    func testIsOnlyLetters2() {
        let str = "abc가나다"
        XCTAssert(str.isOnlyLetters == true, "String contains only letters")
    }

    func testIsOnlyLetters3() {
        let str = "abc123"
        XCTAssert(str.isOnlyLetters == false, "String does not just contains letters")
    }

    // MARK: - DateFormat
    func testToDate() {
        let from = "2021-04-01"
        let date = from.toDate("yyyy-MM-dd")
        let to = date?.toString("yyyy-MM-dd")
        XCTAssert(to == "2021-04-01", "To should be 2021-04-01")
    }

    // MARK: - Validation
    func testIsEmail() {
        let str = "test@test.com"
        XCTAssert(str.isEmail == true, "String is email format")
    }

    func testIsEmail2() {
        let str = "test@test"
        XCTAssert(str.isEmail == false, "String is not email format")
    }

    func testIsEmail3() {
        let str = "test@test."
        XCTAssert(str.isEmail == false, "String is not email format")
    }

    func testIsEmail4() {
        let str = "test@t.c"
        XCTAssert(str.isEmail == false, "String is not email format")
    }

    //func testPerformanceExample() {
    //    self.measure() {
    //    }
    //}

}

