import Testing
@testable import DeviceIdentificator

@Suite("DeviceModel+Name & CustomStringConvertible Tests")
struct DeviceModelNameTests {
    
    @Test("`name` property returns correct string for all cases")
    func nameProperty() {
        #expect(DeviceModel.iPod(.touch7G).name == "iPod touch 7G")
        #expect(DeviceModel.iPhone(.iPhone15).name == "iPhone 15")
        #expect(DeviceModel.iPad(.gen10Wifi).name == "iPad 10G (Wifi)")
        #expect(DeviceModel.appleWatch(.ultra2).name == "Apple Watch Ultra 2")
        #expect(DeviceModel.appleTV(.tv4K3G).name == "Apple TV 4K 3G")
        #expect(DeviceModel.mac(.macBookAirM1).name == "MacBook Air (M1)")
        #expect(DeviceModel.macCatalyst.name == "Mac Catalyst")
        #expect(DeviceModel.macDesignedForIpad.name == "Mac Designed for iPad")
        #expect(DeviceModel.unknown(model: "Test").name == "Unknown device: Test")
        #expect(DeviceModel.simulator(.iPhone(.iPhone15), arch: "arm64").name == "Simulator of iPhone 15 @ arm64")
    }
    
    @Test("`simpleName` property strips variants")
    func simpleNameProperty() {
        let iPadWithVariant = DeviceModel.iPad(.gen10Wifi) // "iPad 10G (Wifi)"
        #expect(iPadWithVariant.simpleName == "iPad 10G")
        
        let macWithVariant = DeviceModel.mac(.iMac2PortsM1) // "iMac (M1 2 ports)"
        #expect(macWithVariant.simpleName == "iMac")
        
        let iPhoneWithoutVariant = DeviceModel.iPhone(.iPhone15) // "iPhone 15"
        #expect(iPhoneWithoutVariant.simpleName == "iPhone 15")
    }
    
    @Test("`description` is the same as `name`")
    func descriptionIsName() {
        for model in DeviceModel.allCases {
            #expect(model.description == model.name)
        }
    }
}
