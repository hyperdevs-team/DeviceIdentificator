import Foundation

public extension DeviceModel {
    enum IPhoneModel: String, Equatable, CaseIterable {
        case iPhone1G           = "iPhone1,1"
        case iPhone3G           = "iPhone1,2"
        case iPhone3GS          = "iPhone2,1"
        case iPhone4GSM         = "iPhone3,1"
        case iPhone4GSMRevA     = "iPhone3,2"
        case iPhone4CDMA        = "iPhone3,3"
        case iPhone4S           = "iPhone4,1"
        case iPhone5GSM         = "iPhone5,1"
        case iPhone5Global      = "iPhone5,2"
        case iPhone5CGSM        = "iPhone5,3"
        case iPhone5CGlobal     = "iPhone5,4"
        case iPhone5SGSM        = "iPhone6,1"
        case iPhone5SGlobal     = "iPhone6,2"
        case iPhone6            = "iPhone7,2"
        case iPhone6Plus        = "iPhone7,1"
        case iPhone6S           = "iPhone8,1"
        case iPhone6SPlus       = "iPhone8,2"
        case iPhoneSE           = "iPhone8,4"
        case iPhone7Global      = "iPhone9,1"
        case iPhone7PlusGlobal  = "iPhone9,2"
        case iPhone7GSM         = "iPhone9,3"
        case iPhone7PlusGSM     = "iPhone9,4"
        case iPhone8Global      = "iPhone10,1"
        case iPhone8GSM         = "iPhone10,4"
        case iPhone8PlusGlobal  = "iPhone10,2"
        case iPhone8PlusGSM     = "iPhone10,5"
        case iPhoneXGlobal      = "iPhone10,3"
        case iPhoneXGSM         = "iPhone10,6"
        case iPhoneXR           = "iPhone11,8"
        case iPhoneXS           = "iPhone11,2"
        case iPhoneXSMax        = "iPhone11,6"
        case iPhone11           = "iPhone12,1"
        case iPhone11Pro        = "iPhone12,3"
        case iPhone11ProMax     = "iPhone12,5"
        case iPhoneSE2G         = "iPhone12,8"
        case iPhone12Mini       = "iPhone13,1"
        case iPhone12           = "iPhone13,2"
        case iPhone12Pro        = "iPhone13,3"
        case iPhone12ProMax     = "iPhone13,4"
        case iPhone13Pro        = "iPhone14,2"
        case iPhone13ProMax     = "iPhone14,3"
        case iPhone13Mini       = "iPhone14,4"
        case iPhone13           = "iPhone14,5"
        case iPhoneSE3G         = "iPhone14,6"
        case iPhone14           = "iPhone14,7"
        case iPhone14Plus       = "iPhone14,8"
        case iPhone14Pro        = "iPhone15,2"
        case iPhone14ProMax     = "iPhone15,3"
        case iPhone15           = "iPhone15,4"
        case iPhone15Plus       = "iPhone15,5"
        case iPhone15Pro        = "iPhone16,1"
        case iPhone15ProMax     = "iPhone16,2"
        case iPhone16           = "iPhone17,3"
        case iPhone16Plus       = "iPhone17,4"
        case iPhone16Pro        = "iPhone17,1"
        case iPhone16ProMax     = "iPhone17,2"
        case iPhone16e          = "iPhone17,5"
    }
}
