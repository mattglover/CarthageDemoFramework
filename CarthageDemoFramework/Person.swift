import Foundation

public struct Person {
	public let forename: String
	public let surname: String

	public init(forename: String, surname: String) {
		self.forename = forename
		self.surname = surname
	}
}

extension Person : CustomStringConvertible {
	public var description: String {
		return "\(forename) \(surname)"
	}
}
