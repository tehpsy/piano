extension Bool {
    static func random(_ value: Double) -> Bool {
        return value > Double.random(in: 0..<1)
    }
}
