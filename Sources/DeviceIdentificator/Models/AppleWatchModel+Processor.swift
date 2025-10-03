import Foundation

public extension DeviceModel.AppleWatchModel {
    var processor: DeviceModel.Processor {
        switch self {
        case .original_38mm:            return .appleS1
        case .original_42mm:            return .appleS1
        case .series1_38mm:             return .appleS1P
        case .series1_42mm:             return .appleS1P
        case .series2_38mm:             return .appleS2
        case .series2_42mm:             return .appleS2
        case .series3_38mmGPS:          return .appleS3
        case .series3_38mmCellular:     return .appleS3
        case .series3_42mmGPS:          return .appleS3
        case .series3_42mmCellular:     return .appleS3
        case .series4_40mmGPS:          return .appleS4
        case .series4_40mmCellular:     return .appleS4
        case .series4_44mmGPS:          return .appleS4
        case .series4_44mmCellular:     return .appleS4
        case .series5_40mmGPS:          return .appleS5
        case .series5_40mmCellular:     return .appleS5
        case .series5_44mmGPS:          return .appleS5
        case .series5_44mmCellular:     return .appleS5
        case .series6_40mmGPS:          return .appleS6
        case .series6_40mmCellular:     return .appleS6
        case .series6_44mmGPS:          return .appleS6
        case .series6_44mmCellular:     return .appleS6
        case .series7_41mmGPS:          return .appleS7
        case .series7_41mmCellular:     return .appleS7
        case .series7_45mmGPS:          return .appleS7
        case .series7_45mmCellular:     return .appleS7
        case .series8_41mmGPS:          return .appleS8
        case .series8_41mmCellular:     return .appleS8
        case .series8_45mmGPS:          return .appleS8
        case .series8_45mmCellular:     return .appleS8
        case .series9_41mmGPS:          return .appleS9
        case .series9_41mmCellular:     return .appleS9
        case .series9_45mmGPS:          return .appleS9
        case .series9_45mmCellular:     return .appleS9
        case .series10_42mmGPS:         return .appleS10
        case .series10_42mmCellular:    return .appleS10
        case .series10_46mmGPS:         return .appleS10
        case .series10_46mmCellular:    return .appleS10
        case .series11_42mmGPS:         return .appleS10
        case .series11_42mmCellular:    return .appleS10
        case .series11_46mmGPS:         return .appleS10
        case .series11_46mmCellular:    return .appleS10
        case .SE_40mmGPS:               return .appleS5
        case .SE_40mmCellular:          return .appleS5
        case .SE_44mmGPS:               return .appleS5
        case .SE_44mmCellular:          return .appleS5
        case .SE2_40mmGPS:              return .appleS8
        case .SE2_40mmCellular:         return .appleS8
        case .SE2_44mmGPS:              return .appleS8
        case .SE2_44mmCellular:         return .appleS8
        case .ultra:                    return .appleS8
        case .ultra2:                   return .appleS9
        case .ultra3:                   return .appleS10
        }
    }
}
