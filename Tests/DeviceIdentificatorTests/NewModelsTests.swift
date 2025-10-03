import Testing
@testable import DeviceIdentificator

@Suite("New Models Properties Tests")
struct NewModelsTests {
    
    // MARK: - iPhone Tests
    @Test("iPhone 17 properties")
    func iPhone17() {
        let model: DeviceModel.IPhoneModel = .iPhone17
        let device = DeviceModel.iPhone(model)
        #expect(device.name == "iPhone 17")
        #expect(device.deviceIdentifier == "iPhone18,3")
        #expect(model.processor == .appleA19)
        #expect(DeviceModel(deviceIdentifier: "iPhone18,3") == device)
    }
    
    @Test("iPhone 17 Pro properties")
    func iPhone17Pro() {
        let model: DeviceModel.IPhoneModel = .iPhone17Pro
        let device = DeviceModel.iPhone(model)
        #expect(device.name == "iPhone 17 Pro")
        #expect(device.deviceIdentifier == "iPhone18,1")
        #expect(model.processor == .appleA19Pro)
        #expect(DeviceModel(deviceIdentifier: "iPhone18,1") == device)
    }
    
    @Test("iPhone 17 Pro Max properties")
    func iPhone17ProMax() {
        let model: DeviceModel.IPhoneModel = .iPhone17ProMax
        let device = DeviceModel.iPhone(model)
        #expect(device.name == "iPhone 17 Pro Max")
        #expect(device.deviceIdentifier == "iPhone18,2")
        #expect(model.processor == .appleA19Pro)
        #expect(DeviceModel(deviceIdentifier: "iPhone18,2") == device)
    }
    
    @Test("iPhone Air properties")
    func iPhoneAir() {
        let model: DeviceModel.IPhoneModel = .iPhoneAir
        let device = DeviceModel.iPhone(model)
        #expect(device.name == "iPhone Air")
        #expect(device.deviceIdentifier == "iPhone18,4")
        #expect(model.processor == .appleA19)
        #expect(DeviceModel(deviceIdentifier: "iPhone18,4") == device)
    }
    
    // MARK: - iPad Tests
    @Test("iPad Gen 11 properties")
    func iPadGen11() {
        let wifiModel: DeviceModel.IPadModel = .gen11Wifi
        let wifiDevice = DeviceModel.iPad(wifiModel)
        #expect(wifiDevice.name == "iPad 11G (Wifi)")
        #expect(wifiDevice.deviceIdentifier == "iPad15,7")
        #expect(wifiModel.processor == .appleA14Bionic)
        #expect(DeviceModel(deviceIdentifier: "iPad15,7") == wifiDevice)
        
        let cellularModel: DeviceModel.IPadModel = .gen11Cellular
        let cellularDevice = DeviceModel.iPad(cellularModel)
        #expect(cellularDevice.name == "iPad 11G (Cellular)")
        #expect(cellularDevice.deviceIdentifier == "iPad15,8")
        #expect(cellularModel.processor == .appleA14Bionic)
        #expect(DeviceModel(deviceIdentifier: "iPad15,8") == cellularDevice)
    }
    
    @Test("iPad Air M3 properties")
    func iPadAirM3() {
        let air11Wifi: DeviceModel.IPadModel = .air11InchM3Wifi
        let air11WifiDevice = DeviceModel.iPad(air11Wifi)
        #expect(air11WifiDevice.name == "iPad Air M3 11\" (Wifi)")
        #expect(air11WifiDevice.deviceIdentifier == "iPad15,3")
        #expect(air11Wifi.processor == .appleM3)
        #expect(DeviceModel(deviceIdentifier: "iPad15,3") == air11WifiDevice)
        // ... (additional Air M3 variants can be added here)
    }
    
    @Test("iPad Mini A17 Pro properties")
    func iPadMiniA17Pro() {
        let wifiModel: DeviceModel.IPadModel = .miniA17ProWifi
        let wifiDevice = DeviceModel.iPad(wifiModel)
        #expect(wifiDevice.name == "iPad Mini A17 Pro (Wifi)")
        #expect(wifiDevice.deviceIdentifier == "iPad16,1")
        #expect(wifiModel.processor == .appleA17Pro)
        #expect(DeviceModel(deviceIdentifier: "iPad16,1") == wifiDevice)
    }
    
    // MARK: - Apple Watch Tests
    @Test("Apple Watch Series 10 properties")
    func appleWatchSeries10() {
        let gpsModel: DeviceModel.AppleWatchModel = .series10_42mmGPS
        let gpsDevice = DeviceModel.appleWatch(gpsModel)
        #expect(gpsDevice.name == "Apple Watch Series 10 42mm")
        #expect(gpsDevice.deviceIdentifier == "Watch7,8")
        #expect(gpsModel.processor == .appleS10)
        #expect(DeviceModel(deviceIdentifier: "Watch7,8") == gpsDevice)
    }
    
    @Test("Apple Watch Ultra 3 properties")
    func appleWatchUltra3() {
        let modelEnum: DeviceModel.AppleWatchModel = .ultra3
        let device = DeviceModel.appleWatch(modelEnum)
        #expect(device.name == "Apple Watch Ultra 3")
        #expect(device.deviceIdentifier == "Watch7,12")
        #expect(modelEnum.processor == .appleS10)
        #expect(DeviceModel(deviceIdentifier: "Watch7,12") == device)
    }
}
