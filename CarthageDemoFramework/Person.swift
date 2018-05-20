import Foundation

public struct Person {
	private(set) var forename: String
	private(set) var surname: String
	public var dateOfBirth: Date?

	public init(forename: String, surname: String) {
		self.forename = forename
		self.surname = surname
	}

	public func daysAlive() -> Int? {
		guard let dateOfBirth = self.dateOfBirth else { return nil }
		let daysAliveSeconds = Int(Date().timeIntervalSince(dateOfBirth))
		
		return daysAliveSeconds / 86400
	}
}

extension Person : CustomStringConvertible {
	public var description: String {
		return "\(forename) \(surname)"
	}
}
