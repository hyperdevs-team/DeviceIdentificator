import Foundation

public extension DeviceModel.AppleWatchModel {
    var name: String {
        switch self {
        case .original_38mm:            return "Apple Watch Original 38mm"
        case .original_42mm:            return "Apple Watch Original 42mm"
        case .series1_38mm:             return "Apple Watch Series 1 38mm"
        case .series1_42mm:             return "Apple Watch Series 1 42mm"
        case .series2_38mm:             return "Apple Watch Series 2 38mm"
        case .series2_42mm:             return "Apple Watch Series 2 42mm"
        case .series3_38mmGPS:          return "Apple Watch Series 3 38mm"
        case .series3_38mmCellular:     return "Apple Watch Series 3 38mm"
        case .series3_42mmGPS:          return "Apple Watch Series 3 42mm"
        case .series3_42mmCellular:     return "Apple Watch Series 3 42mm"
        case .series4_40mmGPS:          return "Apple Watch Series 4 40mm"
        case .series4_40mmCellular:     return "Apple Watch Series 4 40mm"
        case .series4_44mmGPS:          return "Apple Watch Series 4 44mm"
        case .series4_44mmCellular:     return "Apple Watch Series 4 44mm"
        case .series5_40mmGPS:          return "Apple Watch Series 5 40mm"
        case .series5_40mmCellular:     return "Apple Watch Series 5 40mm"
        case .series5_44mmGPS:          return "Apple Watch Series 5 44mm"
        case .series5_44mmCellular:     return "Apple Watch Series 5 44mm"
        case .series6_40mmGPS:          return "Apple Watch Series 6 40mm"
        case .series6_40mmCellular:     return "Apple Watch Series 6 40mm"
        case .series6_44mmGPS:          return "Apple Watch Series 6 44mm"
        case .series6_44mmCellular:     return "Apple Watch Series 6 44mm"
        case .series7_41mmGPS:          return "Apple Watch Series 7 41mm"
        case .series7_41mmCellular:     return "Apple Watch Series 7 41mm"
        case .series7_45mmGPS:          return "Apple Watch Series 7 45mm"
        case .series7_45mmCellular:     return "Apple Watch Series 7 45mm"
        case .series8_41mmGPS:          return "Apple Watch Series 8 41mm"
        case .series8_41mmCellular:     return "Apple Watch Series 8 41mm"
        case .series8_45mmGPS:          return "Apple Watch Series 8 45mm"
        case .series8_45mmCellular:     return "Apple Watch Series 8 45mm"
        case .series9_41mmGPS:          return "Apple Watch Series 9 41mm"
        case .series9_41mmCellular:     return "Apple Watch Series 9 41mm"
        case .series9_45mmGPS:          return "Apple Watch Series 9 45mm"
        case .series9_45mmCellular:     return "Apple Watch Series 9 45mm"
        case .SE_40mmGPS:               return "Apple Watch SE1 40mm"
        case .SE_40mmCellular:          return "Apple Watch SE1 40mm"
        case .SE_44mmGPS:               return "Apple Watch SE1 44mm"
        case .SE_44mmCellular:          return "Apple Watch SE1 44mm"
        case .SE2_40mmGPS:              return "Apple Watch SE2 40mm"
        case .SE2_40mmCellular:         return "Apple Watch SE2 40mm"
        case .SE2_44mmGPS:              return "Apple Watch SE2 44mm"
        case .SE2_44mmCellular:         return "Apple Watch SE2 44mm"
        case .ultra:                    return "Apple Watch Ultra 1"
        case .ultra2:                   return "Apple Watch Ultra 2"
        }
    }
}
