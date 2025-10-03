import XCTest
@testable import DeviceIdentificator

class AdditionalCoverageTests: XCTestCase {
    
    func test_description_is_name() {
        DeviceModel.allCases.forEach { model in
            XCTAssertEqual(model.description, model.name)
        }
    }
    
    func test_mac_catalyst_and_designed_for_ipad() {
        let catalyst = DeviceModel.macCatalyst
        XCTAssertEqual(catalyst.name, "Mac Catalyst")
        XCTAssertNil(catalyst.deviceIdentifier)
        XCTAssertEqual(catalyst.architecture, "arm64")
        
        let designedForIPad = DeviceModel.macDesignedForIpad
        XCTAssertEqual(designedForIPad.name, "Mac Designed for iPad")
        XCTAssertNil(designedForIPad.deviceIdentifier)
        XCTAssertEqual(designedForIPad.architecture, "arm64")
    }
    
    func test_unknown_model() {
        let unknown = DeviceModel.unknown(model: "TestDevice1,1")
        XCTAssertEqual(unknown.name, "Unknown device: TestDevice1,1")
        XCTAssertEqual(unknown.deviceIdentifier, "TestDevice1,1")
        XCTAssertNil(unknown.architecture)
        XCTAssertFalse(unknown.hasRoundedDisplayCorners)
        XCTAssertFalse(unknown.hasDynamicIsland)
    }
    
    func test_allDevicesWithRoundedDisplayCorners() {
        let devices = DeviceModel.allDevicesWithRoundedDisplayCorners
        XCTAssertFalse(devices.isEmpty)
        
        // Verifica que todos los dispositivos en la lista realmente tengan la propiedad.
        devices.forEach {
            XCTAssertTrue($0.hasRoundedDisplayCorners)
        }
        
        // Verifica que un dispositivo que no debería estar, no esté.
        let iPhone8 = DeviceModel.iPhone(.iPhone8Global)
        XCTAssertFalse(devices.contains(iPhone8))
    }
    
    func test_simpleName_strips_parentheses() {
        let iPad = DeviceModel.iPad(.gen1Wifi) // "iPad 1G (Wifi)"
        XCTAssertEqual(iPad.simpleName, "iPad 1G")
        
        let mac = DeviceModel.mac(.iMac2PortsM1) // "iMac (M1 2 ports)"
        XCTAssertEqual(mac.simpleName, "iMac")
    }
    
    func test_init_with_simulator_identifier() {
        // Simulates simulator environment
        let originalEnv = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"]
        setenv("SIMULATOR_MODEL_IDENTIFIER", "iPhone15,4", 1) // iPhone 15
        
        let simulatorDevice = DeviceModel(deviceIdentifier: "arm64")
        
        let expectedModel = DeviceModel.simulator(.iPhone(.iPhone15), arch: "arm64")
        XCTAssertEqual(simulatorDevice, expectedModel)
        XCTAssertEqual(simulatorDevice.name, "Simulator of iPhone 15 @ arm64")
        XCTAssertTrue(simulatorDevice.isSimulator)
        XCTAssertTrue(simulatorDevice.isIphone)
        
        // Clean up environment variable
        if let originalEnv = originalEnv {
            setenv("SIMULATOR_MODEL_IDENTIFIER", originalEnv, 1)
        } else {
            unsetenv("SIMULATOR_MODEL_IDENTIFIER")
        }
    }
}
