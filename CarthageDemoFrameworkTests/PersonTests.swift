import XCTest
@testable import CarthageDemoFramework

class PersonTests: XCTestCase {

	var sut: Person!

	func testPersonCanReturnBeConvertedToCustomString() {
		sut = Person(forename: "Matt", surname: "Glover")
		XCTAssertEqual("Matt Glover", sut.description)
	}
}
