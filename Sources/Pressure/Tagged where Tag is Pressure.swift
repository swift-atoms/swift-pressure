public import Quantity

extension Tagged::Tagged where Tag == Pressure, Underlying: Numeric {
    /// The force of this pressure on the area `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Area<Space.Physical>.Value<Underlying>) -> Force.Value<Underlying> {
        Force.amount(lhs.underlying * rhs.underlying)
    }
}
