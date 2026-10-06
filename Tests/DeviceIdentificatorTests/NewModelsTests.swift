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

    // MARK: - 2026 Devices

    @Test("iPhone 17e properties")
    func iPhone17e() {
        let model: DeviceModel.IPhoneModel = .iPhone17e
        let device = DeviceModel.iPhone(model)
        #expect(device.name == "iPhone 17e")
        #expect(device.deviceIdentifier == "iPhone18,5")
        #expect(model.processor == .appleA19)
        #expect(DeviceModel(deviceIdentifier: "iPhone18,5") == device)
    }

    @Test("iPhone 18 Pro properties")
    func iPhone18Pro() {
        let model: DeviceModel.IPhoneModel = .iPhone18Pro
        let device = DeviceModel.iPhone(model)
        #expect(device.name == "iPhone 18 Pro")
        #expect(device.deviceIdentifier == "iPhone19,2")
        #expect(model.processor == .appleA20Pro)
        #expect(DeviceModel(deviceIdentifier: "iPhone19,2") == device)
    }

    @Test("iPhone 18 Pro Max properties (both identifiers)")
    func iPhone18ProMax() {
        do {
            let model: DeviceModel.IPhoneModel = .iPhone18ProMax
            let device = DeviceModel.iPhone(model)
            #expect(device.name == "iPhone 18 Pro Max")
            #expect(device.deviceIdentifier == "iPhone19,3")
            #expect(model.processor == .appleA20Pro)
            #expect(DeviceModel(deviceIdentifier: "iPhone19,3") == device)
        }
        do {
            let model: DeviceModel.IPhoneModel = .iPhone18ProMaxAlt
            let device = DeviceModel.iPhone(model)
            #expect(device.name == "iPhone 18 Pro Max")
            #expect(device.deviceIdentifier == "iPhone19,7")
            #expect(model.processor == .appleA20Pro)
            #expect(DeviceModel(deviceIdentifier: "iPhone19,7") == device)
        }
    }


    @Test("iPad Air M4 properties")
    func iPadAirM4() {
        do {
            let model: DeviceModel.IPadModel = .air11InchM4Wifi
            let device = DeviceModel.iPad(model)
            #expect(device.name == "iPad Air M4 11\" (Wifi)")
            #expect(device.deviceIdentifier == "iPad16,8")
            #expect(model.processor == .appleM4)
            #expect(DeviceModel(deviceIdentifier: "iPad16,8") == device)
        }
        do {
            let model: DeviceModel.IPadModel = .air11InchM4Cellular
            let device = DeviceModel.iPad(model)
            #expect(device.name == "iPad Air M4 11\" (Cellular)")
            #expect(device.deviceIdentifier == "iPad16,9")
            #expect(model.processor == .appleM4)
            #expect(DeviceModel(deviceIdentifier: "iPad16,9") == device)
        }
        do {
            let model: DeviceModel.IPadModel = .air13InchM4Wifi
            let device = DeviceModel.iPad(model)
            #expect(device.name == "iPad Air M4 13\" (Wifi)")
            #expect(device.deviceIdentifier == "iPad16,10")
            #expect(model.processor == .appleM4)
            #expect(DeviceModel(deviceIdentifier: "iPad16,10") == device)
        }
        do {
            let model: DeviceModel.IPadModel = .air13InchM4Cellular
            let device = DeviceModel.iPad(model)
            #expect(device.name == "iPad Air M4 13\" (Cellular)")
            #expect(device.deviceIdentifier == "iPad16,11")
            #expect(model.processor == .appleM4)
            #expect(DeviceModel(deviceIdentifier: "iPad16,11") == device)
        }
    }

    @Test("iPad Pro M5 properties")
    func iPadProM5() {
        do {
            let model: DeviceModel.IPadModel = .pro_11inchM5Wifi
            let device = DeviceModel.iPad(model)
            #expect(device.name == "iPad Pro 8G 11\" (Wifi)")
            #expect(device.deviceIdentifier == "iPad17,1")
            #expect(model.processor == .appleM5)
            #expect(DeviceModel(deviceIdentifier: "iPad17,1") == device)
        }
        do {
            let model: DeviceModel.IPadModel = .pro_11inchM5Cellular
            let device = DeviceModel.iPad(model)
            #expect(device.name == "iPad Pro 8G 11\" (Cellular)")
            #expect(device.deviceIdentifier == "iPad17,2")
            #expect(model.processor == .appleM5)
            #expect(DeviceModel(deviceIdentifier: "iPad17,2") == device)
        }
        do {
            let model: DeviceModel.IPadModel = .pro_13inchM5Wifi
            let device = DeviceModel.iPad(model)
            #expect(device.name == "iPad Pro 8G 13\" (Wifi)")
            #expect(device.deviceIdentifier == "iPad17,3")
            #expect(model.processor == .appleM5)
            #expect(DeviceModel(deviceIdentifier: "iPad17,3") == device)
        }
        do {
            let model: DeviceModel.IPadModel = .pro_13inchM5Cellular
            let device = DeviceModel.iPad(model)
            #expect(device.name == "iPad Pro 8G 13\" (Cellular)")
            #expect(device.deviceIdentifier == "iPad17,4")
            #expect(model.processor == .appleM5)
            #expect(DeviceModel(deviceIdentifier: "iPad17,4") == device)
        }
    }

    @Test("Apple Watch SE3 properties")
    func appleWatchSE3() {
        do {
            let model: DeviceModel.AppleWatchModel = .SE3_40mmGPS
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch SE3 40mm")
            #expect(device.deviceIdentifier == "Watch7,13")
            #expect(model.processor == .appleS10)
            #expect(DeviceModel(deviceIdentifier: "Watch7,13") == device)
        }
        do {
            let model: DeviceModel.AppleWatchModel = .SE3_40mmCellular
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch SE3 40mm")
            #expect(device.deviceIdentifier == "Watch7,14")
            #expect(model.processor == .appleS10)
            #expect(DeviceModel(deviceIdentifier: "Watch7,14") == device)
        }
        do {
            let model: DeviceModel.AppleWatchModel = .SE3_44mmGPS
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch SE3 44mm")
            #expect(device.deviceIdentifier == "Watch7,15")
            #expect(model.processor == .appleS10)
            #expect(DeviceModel(deviceIdentifier: "Watch7,15") == device)
        }
        do {
            let model: DeviceModel.AppleWatchModel = .SE3_44mmCellular
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch SE3 44mm")
            #expect(device.deviceIdentifier == "Watch7,16")
            #expect(model.processor == .appleS10)
            #expect(DeviceModel(deviceIdentifier: "Watch7,16") == device)
        }
    }

    @Test("Apple Watch Series 12 properties")
    func appleWatchSeries12() {
        do {
            let model: DeviceModel.AppleWatchModel = .series12_42mmGPS
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch Series 12 42mm")
            #expect(device.deviceIdentifier == "Watch8,2")
            #expect(model.processor == .appleS11)
            #expect(DeviceModel(deviceIdentifier: "Watch8,2") == device)
        }
        do {
            let model: DeviceModel.AppleWatchModel = .series12_46mmGPS
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch Series 12 46mm")
            #expect(device.deviceIdentifier == "Watch8,3")
            #expect(model.processor == .appleS11)
            #expect(DeviceModel(deviceIdentifier: "Watch8,3") == device)
        }
        do {
            let model: DeviceModel.AppleWatchModel = .series12_42mmCellular
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch Series 12 42mm")
            #expect(device.deviceIdentifier == "Watch8,4")
            #expect(model.processor == .appleS11)
            #expect(DeviceModel(deviceIdentifier: "Watch8,4") == device)
        }
        do {
            let model: DeviceModel.AppleWatchModel = .series12_46mmCellular
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch Series 12 46mm")
            #expect(device.deviceIdentifier == "Watch8,5")
            #expect(model.processor == .appleS11)
            #expect(DeviceModel(deviceIdentifier: "Watch8,5") == device)
        }
    }

    @Test("Apple Watch Ultra 4 properties")
    func appleWatchUltra4() {
        do {
            let model: DeviceModel.AppleWatchModel = .ultra4
            let device = DeviceModel.appleWatch(model)
            #expect(device.name == "Apple Watch Ultra 4")
            #expect(device.deviceIdentifier == "Watch8,1")
            #expect(model.processor == .appleS11)
            #expect(DeviceModel(deviceIdentifier: "Watch8,1") == device)
        }
    }

    @Test("New 2026 devices expose consistent capabilities")
    func newDeviceCapabilities() {
        #expect(DeviceModel.iPhone(.iPhone18Pro).hasDynamicIsland)
        #expect(DeviceModel.iPhone(.iPhone18ProMax).hasDynamicIsland)
        #expect(DeviceModel.iPhone(.iPhone18ProMaxAlt).hasDynamicIsland)
        #expect(DeviceModel.iPhone(.iPhone17e).hasRoundedDisplayCorners)
        #expect(DeviceModel.iPad(.air11InchM4Wifi).hasRoundedDisplayCorners)
        #expect(DeviceModel.iPad(.pro_13inchM5Cellular).hasRoundedDisplayCorners)
    }
}
