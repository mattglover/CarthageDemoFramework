import Foundation

public struct Drink {
	private(set) var id: String
	private(set) var name: String
	private(set) var isAlcoholic: Bool

	public init(id: String, name: String, alcoholic: Bool) {
		self.id = id
		self.name = name
		self.isAlcoholic = alcoholic
	}
}

extension Drink : CustomStringConvertible {
	public var description: String {
		let alcolohicText = isAlcoholic ? "✅" : "❎"
		return "[\(id)] \(name) : \(alcolohicText)"
	}
}
