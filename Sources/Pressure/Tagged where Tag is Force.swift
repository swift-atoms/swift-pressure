public import Quantity

extension Tagged::Tagged where Tag == Force, Underlying: FloatingPoint {
    /// The pressure of this force spread over the area `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Area<Space.Physical>.Value<Underlying>) -> Pressure.Value<Underlying> {
        Pressure.amount(lhs.underlying / rhs.underlying)
    }
}
