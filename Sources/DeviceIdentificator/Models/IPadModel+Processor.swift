import Foundation

public extension DeviceModel.IPadModel {
    var processor: DeviceModel.Processor {
        switch self {
            // iPads
        case .gen1Wifi, .gen1Cellular:                   return .appleA4
        case .gen2Wifi, .gen2GSM, .gen2CDMA, .gen2NewRev: return .appleA5
        case .gen3Wifi, .gen3CDMA, .gen3GSM:             return .appleA5X
        case .gen4Wifi, .gen4GSM, .gen4CDMA:             return .appleA6X
        case .gen5Wifi, .gen5Cellular:                   return .appleA9
        case .gen6Wifi, .gen6Cellular:                   return .appleA10Fusion
        case .gen7Wifi, .gen7Cellular:                   return .appleA10Fusion
        case .gen8Wifi, .gen8Cellular:                   return .appleA12Bionic
        case .gen9Wifi, .gen9Cellular:                   return .appleA13Bionic
        case .gen10Wifi, .gen10Cellular:                 return .appleA14Bionic
        case .gen11Wifi, .gen11Cellular:                 return .appleA14Bionic // Asumido, basado en el iPad 10
            
            // Minis
        case .mini1Wifi, .mini1GSM, .mini1CDMA:          return .appleA5
        case .mini2Wifi, .mini2GSMCDMA, .mini2China:     return .appleA7
        case .mini3Wifi, .mini3GSMCDMA, .mini3China:     return .appleA7
        case .mini4Wifi, .mini4Cellular:                return .appleA8
        case .mini5Wifi, .mini5Cellular:                return .appleA12Bionic
        case .mini6Wifi, .mini6Cellular:                return .appleA15Bionic
        case .miniA17ProWifi, .miniA17ProCellular:      return .appleA17Pro
            
            // Airs
        case .air1Wifi, .air1GSMCDMA, .air1China:        return .appleA7
        case .air2Wifi, .air2Cellular:                   return .appleA8X
        case .air3Wifi, .air3Cellular:                   return .appleA12Bionic
        case .air4Wifi, .air4Cellular:                   return .appleA14Bionic
        case .air5Wifi, .air5Cellular:                   return .appleM1
        case .air11InchM2Wifi, .air11InchM2Cellular,
                .air13InchM2Wifi, .air13InchM2Cellular:     return .appleM2
        case .air11InchM3Wifi, .air11InchM3Cellular,
                .air13InchM3Wifi, .air13InchM3Cellular:     return .appleM3
            
            // Pros
        case .pro1_9d7inchWifi, .pro1_9d7inchCellular,
                .pro1_12d9inchWifi, .pro1_12d9inchCellular:     return .appleA9X
        case .pro1_10d5inchWifi, .pro1_10d5inchCellular,
                .pro2_12d9inchWifi, .pro2_12d9inchCellular:     return .appleA10XFusion
        case .pro1_11inchWifi, .pro1_11inchWifiTera, .pro1_11inchCellular, .pro1_11inchCellularTera,
                .pro3_12d9inchWifi, .pro3_12d9inchWifiTera, .pro3_12d9inchCellular, .pro3_12d9inchCellularTera: return .appleA12XBionic
        case .pro2_11inchWifi, .pro2_11inchCellular,
                .pro4_12d9inchWifi, .pro4_12d9inchCellular:     return .appleA12ZBionic
        case .pro3_11inchWifi, .pro3_11inchWifiTera, .pro3_11inchCellular, .pro3_11inchCellularTera,
                .pro5_12d9inchWifi, .pro5_12d9inchWifiTera, .pro5_12d9inchCellular, .pro5_12d9inchCellularTera: return .appleM1
        case .pro4_11inchWifi, .pro4_11inchCellular,
                .pro6_12d9inchWifi, .pro6_12d9inchCellular:     return .appleM2
        case .pro_11inchM4Wifi, .pro_11inchM4Cellular,
                .pro_13inchM4Wifi, .pro_13inchM4Cellular:       return .appleM4
        }
    }
}
