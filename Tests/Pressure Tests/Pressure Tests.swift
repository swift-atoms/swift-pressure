import Pressure
import Testing

enum `Pressure Tests` {}

extension `Pressure Tests` {
    @Suite struct `Pressure is a kind of quantity in pascals` {
        @Test func `Its dimension is length: -1, mass: 1, time: -2`() {
            #expect(Pressure.dimension == Quantity.Dimension(length: -1, mass: 1, time: -2))
        }

        @Test func `An amount given in pascals keeps its scalar`() {
            #expect(Pressure.pascals(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A pressure is a force over an area` {
        @Test func `Its dimension balances`() {
            #expect(Pressure.dimension == Force.dimension / Area<Space.Physical>.dimension)
        }

        @Test func `A force over an area, and back`() {
            let pressure = Force.newtons(6.0) / Area<Space.Physical>.amount(2.0)
            #expect(pressure == Pressure.pascals(3.0))
            #expect(pressure * Area<Space.Physical>.amount(2.0) == Force.newtons(6.0))
        }
    }
}
