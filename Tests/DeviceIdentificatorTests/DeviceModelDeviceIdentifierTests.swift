import Testing
@testable import DeviceIdentificator
import Foundation

@Suite("DeviceModel+DeviceIdentifier Tests")
struct DeviceModelDeviceIdentifierTests {
    
    @Test("Initialize from known device identifier")
    func initWithKnownIdentifier() {
        #expect(DeviceModel(deviceIdentifier: "iPhone5,2") == .iPhone(.iPhone5Global))
        #expect(DeviceModel(deviceIdentifier: "iPod9,1") == .iPod(.touch7G))
        #expect(DeviceModel(deviceIdentifier: "iPad14,6") == .iPad(.pro6_12d9inchCellular))
        #expect(DeviceModel(deviceIdentifier: "Watch6,18") == .appleWatch(.ultra))
        #expect(DeviceModel(deviceIdentifier: "AppleTV14,1") == .appleTV(.tv4K3G))
        #expect(DeviceModel(deviceIdentifier: "Mac14,8") == .mac(.macPro))
    }
    
    @Test("Initialize from unknown device identifier")
    func initWithUnknownIdentifier() {
        let device = DeviceModel(deviceIdentifier: "hakuna")
        #expect(device == .unknown(model: "hakuna"))
    }
    
    @Test("Initialize from simulator identifier")
    func initWithSimulatorIdentifier() {
        // Simulate the environment of a simulator
        let originalEnv = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"]
        setenv("SIMULATOR_MODEL_IDENTIFIER", "iPhone15,4", 1) // iPhone 15
        
        let simulatorDevice = DeviceModel(deviceIdentifier: "arm64")
        let expectedModel = DeviceModel.simulator(.iPhone(.iPhone15), arch: "arm64")
        #expect(simulatorDevice == expectedModel)
        
        // Clean up environment variable
        if let originalEnv {
            setenv("SIMULATOR_MODEL_IDENTIFIER", originalEnv, 1)
        } else {
            unsetenv("SIMULATOR_MODEL_IDENTIFIER")
        }
    }
    
    @Test("`deviceIdentifier` property returns correct value")
    func deviceIdentifierProperty() {
        #expect(DeviceModel.iPhone(.iPhone5Global).deviceIdentifier == "iPhone5,2")
        #expect(DeviceModel.macCatalyst.deviceIdentifier == nil)
        #expect(DeviceModel.macDesignedForIpad.deviceIdentifier == nil)
        #expect(DeviceModel.unknown(model: "hakuna").deviceIdentifier == "hakuna")
        
        let simulator = DeviceModel.simulator(.iPhone(.iPhone15), arch: "arm64")
        #expect(simulator.deviceIdentifier == "iPhone15,4")
    }
    
    @Test("All real models can be initialized from their identifier")
    func allRealModelsInitFromIdentifier() {
        let realModels = DeviceModel.allCases.filter { !$0.isSimulator && $0.deviceIdentifier != nil }
        for model in realModels {
            let identifier = model.deviceIdentifier!
            #expect(DeviceModel(deviceIdentifier: identifier) == model, "Failed for \(model.name) with identifier \(identifier)")
        }
    }
}
