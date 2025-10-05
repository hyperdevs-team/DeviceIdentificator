import Testing
@testable import DeviceIdentificator

@Suite("DeviceModel+Capabilities Tests")
struct DeviceModelCapabilitiesTests {
    
    @Test("Device has rounded display corners")
    func hasRoundedDisplayCorners() {
        let iPhoneX = DeviceModel.iPhone(.iPhoneXGlobal)
        #expect(iPhoneX.hasRoundedDisplayCorners == true)
        
        let iPhoneXSimulator = DeviceModel.simulator(iPhoneX, arch: "arm64")
        #expect(iPhoneXSimulator.hasRoundedDisplayCorners == true)
    }
    
    @Test("Device does not have rounded display corners")
    func doesNotHaveRoundedDisplayCorners() {
        let iPhone8 = DeviceModel.iPhone(.iPhone8Global)
        #expect(iPhone8.hasRoundedDisplayCorners == false)
        
        let iPhone8Simulator = DeviceModel.simulator(iPhone8, arch: "arm64")
        #expect(iPhone8Simulator.hasRoundedDisplayCorners == false)
    }
    
    @Test("Device has dynamic island")
    func hasDynamicIsland() {
        let iPhone15 = DeviceModel.iPhone(.iPhone15)
        #expect(iPhone15.hasDynamicIsland == true)
        
        let iPhone15Simulator = DeviceModel.simulator(iPhone15, arch: "arm64")
        #expect(iPhone15Simulator.hasDynamicIsland == true)
    }
    
    @Test("Device does not have dynamic island")
    func doesNotHaveDynamicIsland() {
        let iPhone13 = DeviceModel.iPhone(.iPhone13)
        #expect(iPhone13.hasDynamicIsland == false)
        
        let iPhone13Simulator = DeviceModel.simulator(iPhone13, arch: "arm64")
        #expect(iPhone13Simulator.hasDynamicIsland == false)
    }
    
    @Test("`allDevicesWithRoundedDisplayCorners` contains correct models")
    func allDevicesWithRoundedCorners() {
        let all = DeviceModel.allDevicesWithRoundedDisplayCorners
        #expect(all.contains(.iPhone(.iPhone15Pro)))
        #expect(!all.contains(.iPhone(.iPhone8Global)))
    }
}
