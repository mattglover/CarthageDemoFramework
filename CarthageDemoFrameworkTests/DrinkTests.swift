import XCTest
@testable import CarthageDemoFramework

class DrinkTests: XCTestCase {

	var sut: Drink!

	func testCanReturnBeConvertedToCustomString() {
		sut = Drink(id: "000001", name: "Carlsberg Lager", alcoholic: true)
		XCTAssertEqual("[000001] Carlsberg Lager : ✅", sut.description)

		sut = Drink(id: "000002", name: "Fresh Orange Juice", alcoholic: false)
		XCTAssertEqual("[000002] Fresh Orange Juice : ❎", sut.description)
	}
}
