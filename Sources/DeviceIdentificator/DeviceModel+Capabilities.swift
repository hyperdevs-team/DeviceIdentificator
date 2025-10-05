public extension DeviceModel {
    static var allDevicesWithRoundedDisplayCorners: [DeviceModel] {
        allCases.filter { $0.hasRoundedDisplayCorners }
    }

    var hasRoundedDisplayCorners: Bool {
        switch self {
        case .iPhone(.iPhoneXGlobal),
             .iPhone(.iPhoneXGSM),
             .iPhone(.iPhoneXS),
             .iPhone(.iPhoneXSMax),
             .iPhone(.iPhoneXR),
             .iPhone(.iPhone11),
             .iPhone(.iPhone11Pro),
             .iPhone(.iPhone11ProMax),
             .iPhone(.iPhone12Mini),
             .iPhone(.iPhone12),
             .iPhone(.iPhone12Pro),
             .iPhone(.iPhone12ProMax),
             .iPhone(.iPhone13Mini),
             .iPhone(.iPhone13),
             .iPhone(.iPhone13Pro),
             .iPhone(.iPhone13ProMax),
             .iPhone(.iPhone14),
             .iPhone(.iPhone14Plus),
             .iPhone(.iPhone14Pro),
             .iPhone(.iPhone14ProMax),
             .iPhone(.iPhone15),
             .iPhone(.iPhone15Plus),
             .iPhone(.iPhone15Pro),
             .iPhone(.iPhone15ProMax),
             .iPhone(.iPhone16),
             .iPhone(.iPhone16Plus),
             .iPhone(.iPhone16Pro),
             .iPhone(.iPhone16ProMax),
             .iPhone(.iPhone16e),
             .iPad(.gen10Wifi),
             .iPad(.gen10Cellular),
             .iPad(.air4Wifi),
             .iPad(.air4Cellular),
             .iPad(.air5Wifi),
             .iPad(.air5Cellular),
             .iPad(.air11InchM2Wifi),
             .iPad(.air11InchM2Cellular),
             .iPad(.air13InchM2Wifi),
             .iPad(.air13InchM2Cellular),
             .iPad(.mini6Wifi),
             .iPad(.mini6Cellular),
             .iPad(.pro1_11inchWifi),
             .iPad(.pro1_11inchWifiTera),
             .iPad(.pro1_11inchCellular),
             .iPad(.pro1_11inchCellularTera),
             .iPad(.pro2_11inchWifi),
             .iPad(.pro2_11inchCellular),
             .iPad(.pro3_12d9inchWifi),
             .iPad(.pro3_12d9inchWifiTera),
             .iPad(.pro3_12d9inchCellular),
             .iPad(.pro3_12d9inchCellularTera),
             .iPad(.pro4_12d9inchWifi),
             .iPad(.pro4_12d9inchCellular),
             .iPad(.pro3_11inchWifi),
             .iPad(.pro3_11inchWifiTera),
             .iPad(.pro3_11inchCellular),
             .iPad(.pro5_12d9inchWifi),
             .iPad(.pro5_12d9inchCellular),
             .iPad(.pro5_12d9inchCellularTera),
             .iPad(.pro4_11inchWifi),
             .iPad(.pro4_11inchCellular),
             .iPad(.pro6_12d9inchWifi),
             .iPad(.pro6_12d9inchCellular),
             .iPad(.pro_11inchM4Wifi),
             .iPad(.pro_11inchM4Cellular),
             .iPad(.pro_13inchM4Wifi),
             .iPad(.pro_13inchM4Cellular),
             .mac(.iMac2PortsM1),
             .mac(.iMac4PortsM1),
             .mac(.iMac2PortsM3),
             .mac(.iMac4PortsM3),
             .mac(.iMac2PortsM4),
             .mac(.iMac4PortsM4),
             .mac(.macBookAir13InchM2),
             .mac(.macBookAir15InchM2),
             .mac(.macBookAir13InchM3),
             .mac(.macBookAir15InchM3),
             .mac(.macBookProM3),
             .mac(.macBookProM4),
             .mac(.macBookPro14InchM1Pro),
             .mac(.macBookPro14InchM1Max),
             .mac(.macBookPro16InchM1Pro),
             .mac(.macBookPro16InchM1Max),
             .mac(.macBookPro14InchM2Pro),
             .mac(.macBookPro14InchM2Max),
             .mac(.macBookPro16InchM2Pro),
             .mac(.macBookPro16InchM2Max),
             .mac(.macBookPro14InchM3Pro),
             .mac(.macBookPro14InchM3Max14Core),
             .mac(.macBookPro14InchM3Max16Core),
             .mac(.macBookPro16InchM3Pro),
             .mac(.macBookPro16InchM3Max14Core),
             .mac(.macBookPro16InchM3Max16Core),
             .mac(.macBookPro14InchM4Pro),
             .mac(.macBookPro14InchM4Max),
             .mac(.macBookPro16InchM4Pro),
             .mac(.macBookPro16InchM4Max):
            return true

        case .simulator(let model, _):
            return model.hasRoundedDisplayCorners

        default:
            return false
        }
    }

    var hasDynamicIsland: Bool {
        switch self {
            case .iPhone(.iPhone14Pro),
                 .iPhone(.iPhone14ProMax),
                 .iPhone(.iPhone15),
                 .iPhone(.iPhone15Plus),
                 .iPhone(.iPhone15Pro),
                 .iPhone(.iPhone15ProMax),
                 .iPhone(.iPhone16),
                 .iPhone(.iPhone16Plus),
                 .iPhone(.iPhone16Pro),
                 .iPhone(.iPhone16ProMax):
                return true

            case .simulator(let model, _):
                return model.hasDynamicIsland

            default:
                return false
        }
    }
}
