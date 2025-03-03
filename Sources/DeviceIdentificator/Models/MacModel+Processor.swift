import Foundation

public extension DeviceModel.MacModel {
    var processor: DeviceModel.Processor {
        switch self {
        case .iMac2PortsM1:                   return .appleM1
        case .iMac4PortsM1:                   return .appleM1
        case .iMac2PortsM3:                   return .appleM3
        case .iMac4PortsM3:                   return .appleM3
        case .iMac2PortsM4:                   return .appleM4
        case .iMac4PortsM4:                   return .appleM4
        case .macBookAirM1:                   return .appleM1
        case .macBookAir13InchM2:             return .appleM2
        case .macBookAir15InchM2:             return .appleM2
        case .macBookAir13InchM3:             return .appleM3
        case .macBookAir15InchM3:             return .appleM3
        case .macBookProM1:                   return .appleM1
        case .macBookPro14InchM1Pro:          return .appleM1Pro
        case .macBookPro14InchM1Max:          return .appleM1Max
        case .macBookPro16InchM1Pro:          return .appleM1Pro
        case .macBookPro16InchM1Max:          return .appleM1Max
        case .macBookProM2:                   return .appleM2
        case .macBookPro14InchM2Pro:          return .appleM2Pro
        case .macBookPro14InchM2Max:          return .appleM2Max
        case .macBookPro16InchM2Pro:          return .appleM2Pro
        case .macBookPro16InchM2Max:          return .appleM2Max
        case .macBookProM3:                   return .appleM3
        case .macBookPro14InchM3Pro:          return .appleM3Pro
        case .macBookPro14InchM3Max14Core:    return .appleM3Max
        case .macBookPro14InchM3Max16Core:    return .appleM3Max
        case .macBookPro16InchM3Pro:          return .appleM3Pro
        case .macBookPro16InchM3Max14Core:    return .appleM3Max
        case .macBookPro16InchM3Max16Core:    return .appleM3Max
        case .macBookProM4:                   return .appleM4
        case .macBookPro14InchM4Pro:          return .appleM4Pro
        case .macBookPro14InchM4Max:          return .appleM4Max
        case .macBookPro16InchM4Pro:          return .appleM4Pro
        case .macBookPro16InchM4Max:          return .appleM4Max
        case .macPro:                         return .appleM2Ultra
        case .macStudioM1Max:                 return .appleM1Max
        case .macStudioM1Ultra:               return .appleM1Ultra
        case .macStudioM2Max:                 return .appleM2Max
        case .macStudioM2Ultra:               return .appleM2Ultra
        case .miniM1:                         return .appleM1
        case .miniM2:                         return .appleM2
        case .miniM2Pro:                      return .appleM2Pro
        case .miniM4:                         return .appleM4
        case .miniM4Pro:                      return .appleM4Pro
        }
    }
}
