import Testing
@testable import DeviceIdentificator

@Suite("DeviceModel.current Tests")
struct DeviceModelCurrentTests {
    
    @Test("`current` property returns a valid model")
    @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
    func currentDeviceModel() {
        let current = DeviceModel.current
        
        // Esta prueba verifica que `current` no sea un caso inesperado o no inicializado.
        // La aserción específica dependerá de la plataforma en la que se ejecuten los tests.
        #expect(current != .unknown(model: ""), "Current device should not be an empty unknown model.")
        
#if targetEnvironment(simulator)
        #expect(current.isSimulator, "Should be identified as a simulator.")
#else
        #expect(!current.isSimulator, "Should be identified as a real device.")
#endif
        
        // La siguiente prueba es un ejemplo y solo pasará si ejecutas los tests en un iPhone 15.
        // El objetivo es demostrar que el valor es coherente.
        // #expect(current == .iPhone(.iPhone15))
    }
}
