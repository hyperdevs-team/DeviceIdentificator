import Foundation

public extension DeviceModel {
    enum AppleWatchModel: String, Equatable, CaseIterable {
        case original_38mm          = "Watch1,1"
        case original_42mm          = "Watch1,2"
        case series1_38mm           = "Watch2,6"
        case series1_42mm           = "Watch2,7"
        case series2_38mm           = "Watch2,3"
        case series2_42mm           = "Watch2,4"
        case series3_38mmCellular   = "Watch3,1"
        case series3_42mmCellular   = "Watch3,2"
        case series3_38mmGPS        = "Watch3,3"
        case series3_42mmGPS        = "Watch3,4"
        case series4_40mmGPS        = "Watch4,1"
        case series4_44mmGPS        = "Watch4,2"
        case series4_40mmCellular   = "Watch4,3"
        case series4_44mmCellular   = "Watch4,4"
        case series5_40mmGPS        = "Watch5,1"
        case series5_44mmGPS        = "Watch5,2"
        case series5_40mmCellular   = "Watch5,3"
        case series5_44mmCellular   = "Watch5,4"
        case SE_40mmGPS             = "Watch5,9"
        case SE_44mmGPS             = "Watch5,10"
        case SE_40mmCellular        = "Watch5,11"
        case SE_44mmCellular        = "Watch5,12"
        case series6_40mmGPS        = "Watch6,1"
        case series6_44mmGPS        = "Watch6,2"
        case series6_40mmCellular   = "Watch6,3"
        case series6_44mmCellular   = "Watch6,4"
        case series7_41mmGPS        = "Watch6,6"
        case series7_45mmGPS        = "Watch6,7"
        case series7_41mmCellular   = "Watch6,8"
        case series7_45mmCellular   = "Watch6,9"
        case SE2_40mmGPS            = "Watch6,10"
        case SE2_44mmGPS            = "Watch6,11"
        case SE2_40mmCellular       = "Watch6,12"
        case SE2_44mmCellular       = "Watch6,13"
        case series8_41mmGPS        = "Watch6,14"
        case series8_45mmGPS        = "Watch6,15"
        case series8_41mmCellular   = "Watch6,16"
        case series8_45mmCellular   = "Watch6,17"
        case ultra                  = "Watch6,18"
        case series9_41mmGPS        = "Watch7,1"
        case series9_45mmGPS        = "Watch7,2"
        case series9_41mmCellular   = "Watch7,3"
        case series9_45mmCellular   = "Watch7,4"
        case ultra2                 = "Watch7,5"
    }
}
