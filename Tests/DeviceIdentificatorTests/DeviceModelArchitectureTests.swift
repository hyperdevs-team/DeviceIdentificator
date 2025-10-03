import Testing
@testable import DeviceIdentificator

@Suite("DeviceModel+Architecture Tests")
struct DeviceModelArchitectureTests {
    
    @Test("Verifies architecture for all device types")
    func testArchitectureForAllTypes() {
        #expect(DeviceModel.iPod(.touch7G).architecture == "arm64")
        #expect(DeviceModel.iPhone(.iPhone15Pro).architecture == "arm64e")
        #expect(DeviceModel.iPad(.pro_11inchM4Wifi).architecture == "arm64e")
        #expect(DeviceModel.appleWatch(.series9_41mmGPS).architecture == "arm64e")
        #expect(DeviceModel.appleTV(.tv4K3G).architecture == "arm64e")
        #expect(DeviceModel.mac(.macBookProM4).architecture == "arm64e")
    }
    
    @Test("Verifies architecture for special cases")
    func testArchitectureForSpecialCases() {
        #expect(DeviceModel.macCatalyst.architecture == "arm64")
        #expect(DeviceModel.macDesignedForIpad.architecture == "arm64")
        #expect(DeviceModel.unknown(model: "Test").architecture == nil)
    }
    
    @Test("Verifies architecture for simulator")
    func testArchitectureForSimulator() {
        let simulator = DeviceModel.simulator(.iPhone(.iPhone15), arch: "arm64")
        #expect(simulator.architecture == "arm64")
    }
}
