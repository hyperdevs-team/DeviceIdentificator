import Testing
@testable import DeviceIdentificator

@Suite("DeviceModel+CaseIterable Tests")
struct DeviceModelCaseIterableTests {
    
    @Test("`allCases` contains all model types")
    func allCasesContainsAllTypes() {
        let allCases = DeviceModel.allCases
        
        #expect(allCases.contains { $0.isIphone && !$0.isSimulator })
        #expect(allCases.contains { $0.isIpad && !$0.isSimulator })
        #expect(allCases.contains { $0.isWatch && !$0.isSimulator })
        #expect(allCases.contains { $0.isAppleTV && !$0.isSimulator })
        #expect(allCases.contains { if case .mac = $0 { return true } else { return false } })
        
        #expect(allCases.contains { $0.isSimulator })
        #expect(allCases.contains(.macCatalyst))
        #expect(allCases.contains(.macDesignedForIpad))
    }
}
