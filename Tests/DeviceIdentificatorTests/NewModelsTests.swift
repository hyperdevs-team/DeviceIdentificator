import XCTest
@testable import DeviceIdentificator

class NewModelsTests: XCTestCase {

    // MARK: - iPhone Tests

    func test_iPhone17_properties() {
        let model: DeviceModel.IPhoneModel = .iPhone17
        let device = DeviceModel.iPhone(model)
        XCTAssertEqual(device.name, "iPhone 17")
        XCTAssertEqual(device.deviceIdentifier, "iPhone18,3")
        XCTAssertEqual(model.processor, .appleA19)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPhone18,3"), device)
    }

    func test_iPhone17Pro_properties() {
        let model: DeviceModel.IPhoneModel = .iPhone17Pro
        let device = DeviceModel.iPhone(model)
        XCTAssertEqual(device.name, "iPhone 17 Pro")
        XCTAssertEqual(device.deviceIdentifier, "iPhone18,1")
        XCTAssertEqual(model.processor, .appleA19Pro)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPhone18,1"), device)
    }

    func test_iPhone17ProMax_properties() {
        let model: DeviceModel.IPhoneModel = .iPhone17ProMax
        let device = DeviceModel.iPhone(model)
        XCTAssertEqual(device.name, "iPhone 17 Pro Max")
        XCTAssertEqual(device.deviceIdentifier, "iPhone18,2")
        XCTAssertEqual(model.processor, .appleA19Pro)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPhone18,2"), device)
    }

    func test_iPhoneAir_properties() {
        let model: DeviceModel.IPhoneModel = .iPhoneAir
        let device = DeviceModel.iPhone(model)
        XCTAssertEqual(device.name, "iPhone Air")
        XCTAssertEqual(device.deviceIdentifier, "iPhone18,4")
        XCTAssertEqual(model.processor, .appleA19)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPhone18,4"), device)
    }

    // MARK: - iPad Tests

    func test_iPadGen11_properties() {
        let wifiModel: DeviceModel.IPadModel = .gen11Wifi
        let wifiDevice = DeviceModel.iPad(wifiModel)
        XCTAssertEqual(wifiDevice.name, "iPad 11G (Wifi)")
        XCTAssertEqual(wifiDevice.deviceIdentifier, "iPad15,7")
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPad15,7"), wifiDevice)

        let cellularModel: DeviceModel.IPadModel = .gen11Cellular
        let cellularDevice = DeviceModel.iPad(cellularModel)
        XCTAssertEqual(cellularDevice.name, "iPad 11G (Cellular)")
        XCTAssertEqual(cellularDevice.deviceIdentifier, "iPad15,8")
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPad15,8"), cellularDevice)
    }

    func test_iPadAirM3_properties() {
        let air11Wifi: DeviceModel.IPadModel = .air11InchM3Wifi
        let air11WifiDevice = DeviceModel.iPad(air11Wifi)
        XCTAssertEqual(air11WifiDevice.name, "iPad Air M3 11\" (Wifi)")
        XCTAssertEqual(air11WifiDevice.deviceIdentifier, "iPad15,3")
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPad15,3"), air11WifiDevice)

        let air11Cellular: DeviceModel.IPadModel = .air11InchM3Cellular
        let air11CellularDevice = DeviceModel.iPad(air11Cellular)
        XCTAssertEqual(air11CellularDevice.name, "iPad Air M3 11\" (Cellular)")
        XCTAssertEqual(air11CellularDevice.deviceIdentifier, "iPad15,4")
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPad15,4"), air11CellularDevice)
        
        let air13Wifi: DeviceModel.IPadModel = .air13InchM3Wifi
        let air13WifiDevice = DeviceModel.iPad(air13Wifi)
        XCTAssertEqual(air13WifiDevice.name, "iPad Air M3 13\" (Wifi)")
        XCTAssertEqual(air13WifiDevice.deviceIdentifier, "iPad15,5")
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPad15,5"), air13WifiDevice)

        let air13Cellular: DeviceModel.IPadModel = .air13InchM3Cellular
        let air13CellularDevice = DeviceModel.iPad(air13Cellular)
        XCTAssertEqual(air13CellularDevice.name, "iPad Air M3 13\" (Cellular)")
        XCTAssertEqual(air13CellularDevice.deviceIdentifier, "iPad15,6")
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPad15,6"), air13CellularDevice)
    }

    func test_iPadMiniA17Pro_properties() {
        let wifiModel: DeviceModel.IPadModel = .miniA17ProWifi
        let wifiDevice = DeviceModel.iPad(wifiModel)
        XCTAssertEqual(wifiDevice.name, "iPad Mini A17 Pro (Wifi)")
        XCTAssertEqual(wifiDevice.deviceIdentifier, "iPad16,1")
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPad16,1"), wifiDevice)

        let cellularModel: DeviceModel.IPadModel = .miniA17ProCellular
        let cellularDevice = DeviceModel.iPad(cellularModel)
        XCTAssertEqual(cellularDevice.name, "iPad Mini A17 Pro (Cellular)")
        XCTAssertEqual(cellularDevice.deviceIdentifier, "iPad16,2")
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPad16,2"), cellularDevice)
    }

    // MARK: - Apple Watch Tests

    func test_AppleWatchSeries10_properties() {
        let gps42mm = DeviceModel.appleWatch(.series10_42mmGPS)
        XCTAssertEqual(gps42mm.name, "Apple Watch Series 10 42mm")
        XCTAssertEqual(gps42mm.deviceIdentifier, "Watch7,8")
        XCTAssertEqual(DeviceModel.AppleWatchModel.series10_42mmGPS.processor, .appleS10)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "Watch7,8"), gps42mm)

        let cellular42mm = DeviceModel.appleWatch(.series10_42mmCellular)
        XCTAssertEqual(cellular42mm.name, "Apple Watch Series 10 42mm")
        XCTAssertEqual(cellular42mm.deviceIdentifier, "Watch7,10")
        XCTAssertEqual(DeviceModel.AppleWatchModel.series10_42mmCellular.processor, .appleS10)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "Watch7,10"), cellular42mm)
    }

    func test_AppleWatchUltra3_properties() {
        let model = DeviceModel.appleWatch(.ultra3)
        XCTAssertEqual(model.name, "Apple Watch Ultra 3")
        XCTAssertEqual(model.deviceIdentifier, "Watch7,12")
        XCTAssertEqual(DeviceModel.AppleWatchModel.ultra3.processor, .appleS10)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "Watch7,12"), model)
    }
    
    func test_AppleWatchSeries11_properties() {
        let gps42mm = DeviceModel.appleWatch(.series11_42mmGPS)
        XCTAssertEqual(gps42mm.name, "Apple Watch Series 11 42mm")
        XCTAssertEqual(gps42mm.deviceIdentifier, "Watch7,17")
        XCTAssertEqual(DeviceModel.AppleWatchModel.series11_42mmGPS.processor, .appleS10)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "Watch7,17"), gps42mm)

        let cellular42mm = DeviceModel.appleWatch(.series11_42mmCellular)
        XCTAssertEqual(cellular42mm.name, "Apple Watch Series 11 42mm")
        XCTAssertEqual(cellular42mm.deviceIdentifier, "Watch7,19")
        XCTAssertEqual(DeviceModel.AppleWatchModel.series11_42mmCellular.processor, .appleS10)
        XCTAssertEqual(DeviceModel(deviceIdentifier: "Watch7,19"), cellular42mm)
    }
}
