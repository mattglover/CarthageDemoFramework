import XCTest
@testable import CarthageDemoFramework

class PersonTests: XCTestCase {

	var sut: Person!

	func testPersonCanReturnBeConvertedToCustomString() {
		sut = Person(forename: "Matt", surname: "Glover")
		XCTAssertEqual("Matt Glover", sut.description)
	}

	func testAfterSettingDOB_getDaysAlive_returnsCorrectValue() {
		sut = Person(forename: "Matt", surname: "Glover")

		sut.dateOfBirth = Date.yesterday()
		XCTAssertEqual(1, sut.daysAlive())

		sut.dateOfBirth = Date()
		XCTAssertEqual(0, sut.daysAlive())

		sut.dateOfBirth = Date.tomorrow()
		XCTAssertNil(sut.daysAlive())
	}
}

// MARK: - Test Helpers
extension Date {
	fileprivate static func yesterday() -> Date {
		return Date().addingTimeInterval(-86400)
	}
	fileprivate static func tomorrow() -> Date {
		return Date().addingTimeInterval(86400)
	}
}
