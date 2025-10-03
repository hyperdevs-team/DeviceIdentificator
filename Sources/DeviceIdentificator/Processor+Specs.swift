import Foundation

public extension DeviceModel.Processor {
    var architecture: String {
        switch self {
            // Early 32-bit ARMv7 processors
        case .APL0278, .APL0298, .APL2298,
                .appleA4, .appleA5, .appleA5X:
            return "armv7"
            
            // Custom 32-bit ARMv7s architecture by Apple
        case .appleA6, .appleA6X:
            return "armv7s"
            
            // First generation of 64-bit ARMv8-A processors
        case .appleA7, .appleA8, .appleA8X, .appleA9, .appleA9X,
                .appleA10Fusion, .appleA10XFusion, .appleA11Bionic:
            return "arm64"
            
            // Processors with ARMv8.3-A (Pointer Authentication - arm64e) and newer
        case .appleA12Bionic, .appleA12XBionic, .appleA12ZBionic,
                .appleA13Bionic, .appleA14Bionic, .appleA15Bionic,
                .appleA16Bionic, .appleA17Pro:
            return "arm64e"
            
            // Future processors (estimated to be arm64e or a successor)
        case .appleA18, .appleA18Pro, .appleA19, .appleA19Pro:
            return "arm64e" // Estimation
            
            // Apple Silicon for Mac/iPad
        case .appleM1, .appleM1Pro, .appleM1Max, .appleM1Ultra,
                .appleM2, .appleM2Pro, .appleM2Max, .appleM2Ultra,
                .appleM3, .appleM3Pro, .appleM3Max,
                .appleM4, .appleM4Pro, .appleM4Max:
            return "arm64e"
            
            // Vision Pro Co-processor
        case .appleR1:
            return "arm64" // Specific architecture not public, but it's an ARM-based co-processor.
            
            // Apple Watch processors
        case .appleS1, .appleS1P, .appleS2:
            return "armv7k" // 32-bit architecture for WatchOS
        case .appleS3:
            return "armv8-a" // 64-bit (32-bit compatibility mode)
        case .appleS4, .appleS5,
                .appleS6, .appleS7, .appleS8,
                .appleS9, .appleS10:
            return "arm64e" // 64-bit with Pointer Authentication
            
            // Very early 32-bit ARMv6 processor
        case .APL0098:
            return "armv6"
        }
    }
    
    /// The year the processor was introduced.
    var introducedYear: Int? {
        switch self {
            // Initial Samsung processors
        case .APL0098: return 2007
        case .APL0278: return 2008
        case .APL0298: return 2009
        case .APL2298: return 2010
            
            // A-series
        case .appleA4: return 2010
        case .appleA5: return 2011
        case .appleA5X: return 2012
        case .appleA6: return 2012
        case .appleA6X: return 2012
        case .appleA7: return 2013
        case .appleA8: return 2014
        case .appleA8X: return 2014
        case .appleA9: return 2015
        case .appleA9X: return 2015
        case .appleA10Fusion: return 2016
        case .appleA10XFusion: return 2017
        case .appleA11Bionic: return 2017
        case .appleA12Bionic: return 2018
        case .appleA12XBionic: return 2018
        case .appleA12ZBionic: return 2020
        case .appleA13Bionic: return 2019
        case .appleA14Bionic: return 2020
        case .appleA15Bionic: return 2021
        case .appleA16Bionic: return 2022
        case .appleA17Pro: return 2023
        case .appleA18, .appleA18Pro: return 2024 // Estimated
        case .appleA19, .appleA19Pro: return 2025 // Estimated
            
            // M-series
        case .appleM1: return 2020
        case .appleM1Pro: return 2021
        case .appleM1Max: return 2021
        case .appleM1Ultra: return 2022
        case .appleM2: return 2022
        case .appleM2Pro: return 2023
        case .appleM2Max: return 2023
        case .appleM2Ultra: return 2023
        case .appleM3: return 2023
        case .appleM3Pro: return 2023
        case .appleM3Max: return 2023
        case .appleM4: return 2024
        case .appleM4Pro: return 2024 // Estimated
        case .appleM4Max: return 2024 // Estimated
            
            // R-series
        case .appleR1: return 2024
            
            // S-series
        case .appleS1: return 2015
        case .appleS1P: return 2016
        case .appleS2: return 2016
        case .appleS3: return 2017
        case .appleS4: return 2018
        case .appleS5: return 2019
        case .appleS6: return 2020
        case .appleS7: return 2021
        case .appleS8: return 2022
        case .appleS9: return 2023
        case .appleS10: return 2024 // Estimated
        }
    }
}
