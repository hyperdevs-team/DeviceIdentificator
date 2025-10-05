import Testing
@testable import DeviceIdentificator

@Suite("DeviceModel+Architecture Tests")
struct DeviceModelArchitectureTests {
    
    @Test("Verifies architecture for all device models")
    func testArchitectureForAllTypes() {
        // Reference dictionary that maps each processor to its expected architecture.
        // This is our "source of truth" for the test.
        let expectedArchitectures: [DeviceModel.Processor: String] = [
            // Early Processors
            .APL0098: "armv6",
            .APL0278: "armv7",
            .APL0298: "armv7",
            .APL2298: "armv7",
            
            // A-Series
            .appleA4: "armv7",
            .appleA5: "armv7",
            .appleA5X: "armv7",
            .appleA6: "armv7s",
            .appleA6X: "armv7s",
            .appleA7: "arm64",
            .appleA8: "arm64",
            .appleA8X: "arm64",
            .appleA9: "arm64",
            .appleA9X: "arm64",
            .appleA10Fusion: "arm64",
            .appleA10XFusion: "arm64",
            .appleA11Bionic: "arm64",
            .appleA12Bionic: "arm64e",
            .appleA12XBionic: "arm64e",
            .appleA12ZBionic: "arm64e",
            .appleA13Bionic: "arm64e",
            .appleA14Bionic: "arm64e",
            .appleA15Bionic: "arm64e",
            .appleA16Bionic: "arm64e",
            .appleA17Pro: "arm64e",
            .appleA18: "arm64e",
            .appleA18Pro: "arm64e",
            .appleA19: "arm64e",
            .appleA19Pro: "arm64e",
            
            // M-Series
            .appleM1: "arm64e", .appleM1Pro: "arm64e", .appleM1Max: "arm64e", .appleM1Ultra: "arm64e",
            .appleM2: "arm64e", .appleM2Pro: "arm64e", .appleM2Max: "arm64e", .appleM2Ultra: "arm64e",
            .appleM3: "arm64e", .appleM3Pro: "arm64e", .appleM3Max: "arm64e",
            .appleM4: "arm64e", .appleM4Pro: "arm64e", .appleM4Max: "arm64e",
            
            // R-Series
            .appleR1: "arm64",
            
            // S-Series (Watch)
            .appleS1: "armv7k",
            .appleS1P: "armv7k",
            .appleS2: "armv7k",
            .appleS3: "armv8-a",
            .appleS4: "arm64e",
            .appleS5: "arm64e",
            .appleS6: "arm64e",
            .appleS7: "arm64e",
            .appleS8: "arm64e",
            .appleS9: "arm64e",
            .appleS10: "arm64e"
        ]
        
        // Iterate over all DeviceModel cases to verify their architecture.
        for model in DeviceModel.allCases {
            let calculatedArchitecture = model.architecture
            var expectedArchitecture: String?
            
            switch model {
            case .iPod(let model):
                expectedArchitecture = expectedArchitectures[model.processor]
            case .iPhone(let model):
                expectedArchitecture = expectedArchitectures[model.processor]
            case .iPad(let model):
                expectedArchitecture = expectedArchitectures[model.processor]
            case .appleWatch(let model):
                expectedArchitecture = expectedArchitectures[model.processor]
            case .appleTV(let model):
                expectedArchitecture = expectedArchitectures[model.processor]
            case .mac(let model):
                expectedArchitecture = expectedArchitectures[model.processor]
            case .macCatalyst, .macDesignedForIpad:
                expectedArchitecture = "arm64"
            case .simulator(_, let arch):
                expectedArchitecture = arch
            case .unknown:
                expectedArchitecture = nil
            }
            
            #expect(
                calculatedArchitecture == expectedArchitecture,
                "Architecture mismatch for \(model.name). Expected \(String(describing: expectedArchitecture)), got \(String(describing: calculatedArchitecture))"
            )
        }
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
