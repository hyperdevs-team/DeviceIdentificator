import Testing
@testable import DeviceIdentificator

@Suite("DeviceModel+Helpers Tests")
struct DeviceModelHelpersTests {
    
    @Test("isSimulator")
    func isSimulator() {
        #expect(DeviceModel.simulator(.iPhone(.iPhone15), arch: "arm64").isSimulator == true)
        #expect(DeviceModel.iPhone(.iPhone15).isSimulator == false)
    }
    
    @Test("isAppleTV")
    func isAppleTV() {
        #expect(DeviceModel.appleTV(.tv4K).isAppleTV == true)
        #expect(DeviceModel.simulator(.appleTV(.tv4K), arch: "arm64").isAppleTV == true)
        #expect(DeviceModel.iPhone(.iPhone15).isAppleTV == false)
    }
    
    @Test("isIpad")
    func isIpad() {
        #expect(DeviceModel.iPad(.gen10Wifi).isIpad == true)
        #expect(DeviceModel.simulator(.iPad(.gen10Wifi), arch: "arm64").isIpad == true)
        #expect(DeviceModel.iPhone(.iPhone15).isIpad == false)
    }
    
    @Test("isIphone")
    func isIphone() {
        #expect(DeviceModel.iPhone(.iPhone15).isIphone == true)
        #expect(DeviceModel.simulator(.iPhone(.iPhone15), arch: "arm64").isIphone == true)
        #expect(DeviceModel.iPad(.gen10Wifi).isIphone == false)
    }
    
    @Test("isWatch")
    func isWatch() {
        #expect(DeviceModel.appleWatch(.ultra2).isWatch == true)
        #expect(DeviceModel.simulator(.appleWatch(.ultra2), arch: "arm64").isWatch == true)
        #expect(DeviceModel.iPhone(.iPhone15).isWatch == false)
    }
}
