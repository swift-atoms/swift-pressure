/// Pressure: force on a surface, such as sound pressure, stored in pascals.
public enum Pressure {}

extension Pressure: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -1, mass: 1, time: -2) }
}

extension Pressure {
    /// An amount of pressure, its scalar in pascals.
    public typealias Value<Scalar> = Tagged<Pressure, Scalar>

    /// An amount of pressure given in pascals.
    @inlinable
    public static func pascals<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
