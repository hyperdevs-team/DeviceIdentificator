import Foundation

public extension DeviceModel {
    static var allCases: [DeviceModel] {
        [
            // iPhones
            .iPhone1G,
            .iPhone3G,
            .iPhone3GS,
            .iPhone4(.gsm),
            .iPhone4(.gsmRevA),
            .iPhone4(.cdma),
            .iPhone4S,
            .iPhone5(.gsm),
            .iPhone5(.global),
            .iPhone5C(.gsm),
            .iPhone5C(.global),
            .iPhone5S(.gsm),
            .iPhone5S(.global),
            .iPhone6,
            .iPhone6Plus,
            .iPhone6S,
            .iPhone6SPlus,
            .iPhoneSE,
            .iPhone7(.global),
            .iPhone7Plus(.global),
            .iPhone7(.gsm),
            .iPhone7Plus(.gsm),
            .iPhone8(.global),
            .iPhone8(.gsm),
            .iPhone8Plus(.global),
            .iPhone8Plus(.gsm),
            .iPhoneX(.global),
            .iPhoneX(.gsm),
            .iPhoneXR,
            .iPhoneXS,
            .iPhoneXSMax,
            .iPhone11,
            .iPhone11Pro,
            .iPhone11ProMax,
            .iPhoneSE2G,
            .iPhone12Mini,
            .iPhone12,
            .iPhone12Pro,
            .iPhone12ProMax,
            .iPhone13Pro,
            .iPhone13ProMax,
            .iPhone13Mini,
            .iPhone13,
            .iPhoneSE3G,
            .iPhone14,
            .iPhone14Plus,
            .iPhone14Pro,
            .iPhone14ProMax,

            // iPods
            .iPodTouch1G,
            .iPodTouch2G,
            .iPodTouch3G,
            .iPodTouch4G,
            .iPodTouch5G,
            .iPodTouch6G,
            .iPodTouch7G,

            // iPads
            .iPad1G(.wifi),
            .iPad1G(.cellular),
            .iPad2G(.wifi),
            .iPad2G(.gsm),
            .iPad2G(.cdma),
            .iPad2G(.newRevision),
            .iPad3G(.wifi),
            .iPad3G(.cdma),
            .iPad3G(.gsm),
            .iPad4G(.wifi),
            .iPad4G(.gsm),
            .iPad4G(.cdma),
            .iPad5G(.wifi),
            .iPad5G(.cellular),
            .iPad6G(.wifi),
            .iPad6G(.cellular),
            .iPad7G(.wifi),
            .iPad7G(.cellular),
            .iPad8G(.wifi),
            .iPad8G(.cellular),
            .iPad9G(.wifi),
            .iPad9G(.cellular),
            .iPad10G(.wifi),
            .iPad10G(.cellular),

            // iPad Minis
            .iPadMini1(.wifi),
            .iPadMini1(.gsm),
            .iPadMini1(.cdma),
            .iPadMini2(.wifi),
            .iPadMini2(.gsmCdma),
            .iPadMini2(.china),
            .iPadMini3(.wifi),
            .iPadMini3(.gsmCdma),
            .iPadMini3(.china),
            .iPadMini4(.wifi),
            .iPadMini4(.cellular),
            .iPadMini5(.wifi),
            .iPadMini5(.cellular),
            .iPadMini6(.wifi),
            .iPadMini6(.cellular),

            // iPad Air
            .iPadAir1G(.wifi),
            .iPadAir1G(.gsmCdma),
            .iPadAir1G(.china),
            .iPadAir2G(.wifi),
            .iPadAir2G(.cellular),
            .iPadAir3G(.wifi),
            .iPadAir3G(.cellular),
            .iPadAir4G(.wifi),
            .iPadAir4G(.cellular),
            .iPadAir5G(.wifi),
            .iPadAir5G(.cellular),

            // iPad Pro
            .iPadPro9d7inch1G(.wifi),
            .iPadPro9d7inch1G(.cellular),
            .iPadPro12d9inch1G(.wifi),
            .iPadPro12d9inch1G(.cellular),
            .iPadPro10d5inch1G(.wifi),
            .iPadPro10d5inch1G(.cellular),
            .iPadPro12d9inch2G(.wifi),
            .iPadPro12d9inch2G(.cellular),
            .iPadPro11inch(.wifi),
            .iPadPro11inch(.wifiTera),
            .iPadPro11inch(.cellular),
            .iPadPro11inch(.cellularTera),
            .iPadPro11inch2G(.wifi),
            .iPadPro11inch2G(.cellular),
            .iPadPro12d9inch3G(.wifi),
            .iPadPro12d9inch3G(.wifiTera),
            .iPadPro12d9inch3G(.cellular),
            .iPadPro12d9inch3G(.cellularTera),
            .iPadPro12d9inch4G(.wifi),
            .iPadPro12d9inch4G(.cellular),
            .iPadPro11inch3G(.wifi),
            .iPadPro11inch3G(.wifiTera),
            .iPadPro11inch3G(.cellular),
            .iPadPro11inch3G(.cellularTera),
            .iPadPro12d9inch5G(.wifi),
            .iPadPro12d9inch5G(.wifiTera),
            .iPadPro12d9inch5G(.cellular),
            .iPadPro12d9inch5G(.cellularTera),
            .iPadPro11inch4G(.wifi),
            .iPadPro11inch4G(.cellular),
            .iPadPro12d9inch6G(.wifi),
            .iPadPro12d9inch6G(.cellular),

            // Apple TV
            .appleTV4G,
            .appleTV4K,
            .appleTV4K2G,
            .appleTV4K3G
        ]
    }
}
