# swift-pressure

Use this package when a value is pressure: force on a surface, such as sound pressure. Start from `Pressure`, a kind of quantity of swift-quantity, and make an amount with `Pressure.pascals(_:)`; it is a `Pressure.Value<Scalar>`, a `Tagged<Pressure, Scalar>`.

## Laws

- An amount of pressure is stored in pascals, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: -1, mass: 1, time: -2 (exponents of the base dimensions).
- Amounts of pressure add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- A force over an area is a pressure, and a pressure times an area is a force. Pressure owns `force / area`; stress does not.
