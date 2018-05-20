import Foundation

public struct Person {
	public let forename: String
	public let surname: String
}

extension Person : CustomStringConvertible {
	public var description: String {
		return "\(forename) \(surname)"
	}
}
