protocol Random {
    static func random() -> Self
}
extension Random where Self: CaseIterable {
    static func random() -> Self { Self.allCases.randomElement()! }
}
