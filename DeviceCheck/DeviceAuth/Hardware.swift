import Foundation

class Hardware {
    
    func platformModelString() -> String {
        var size = 0
        sysctlbyname("hw.machine", nil, &size, nil, 0)
        var machine = [CChar](repeating: 0,  count: size)
        sysctlbyname("hw.machine", &machine, &size, nil, 0)
        
        return String(cString: machine)
    }
    
    func modelString() -> String {
        let model = self.platformModelString()
        
        switch model {
            // iPhone
            case "iPhone1,1":
                return "iPhone"
            case "iPhone1,2":
                return "iPhone 3G"
            case "iPhone2,1":
                return "iPhone 3GS"
            case "iPhone3,1":
                return "iPhone 4"
            case "iPhone3,2":
                return "iPhone 4"
            case "iPhone3,3":
                return "iPhone 4"
            case "iPhone4,1":
                return "iPhone 4s"
            case "iPhone5,1":
                return "iPhone 5"
            case "iPhone5,2":
                return "iPhone 5"
            case "iPhone5,3":
                return "iPhone 5c"
            case "iPhone5,4":
                return "iPhone 5c"
            case "iPhone6,1":
                return "iPhone 5s"
            case "iPhone6,2":
                return "iPhone 5s"
            case "iPhone7,1":
                return "iPhone 6 Plus"
            case "iPhone7,2":
                return "iPhone 6"
            case "iPhone8,1":
                return "iPhone 6s"
            case "iPhone8,2":
                return "iPhone 6s Plus"
            case "iPhone8,4":
                return "iPhone SE"
            case "iPhone9,1":
                return "iPhone 7"
            case "iPhone9,2":
                return "iPhone 7 Plus"
            case "iPhone9,3":
                return "iPhone 7"
            case "iPhone9,4":
                return "iPhone 7 Plus"
            case "iPhone10,1":
                return "iPhone 8"
            case "iPhone10,2":
                return "iPhone 8 Plus"
            case "iPhone10,3":
                return "iPhone X"
            case "iPhone10,4":
                return "iPhone 8"
            case "iPhone10,5":
                return "iPhone 8 Plus"
            case "iPhone10,6":
                return "iPhone X"
            
            // iPod touch
            case "iPod1,1":
                return "iPod touch"
            case "iPod2,1":
                return "iPod touch (2nd generation)"
            case "iPod3,1":
                return "iPod touch (3rd generation)"
            case "iPod4,1":
                return "iPod touch (4th generation)"
            case "iPod5,1":
                return "iPod touch (5th generation)"
            case "iPod7,1":
                return "iPod touch (6th generation)"
            
            // iPad
            case "iPad1,1":
                return "iPad"
            case "iPad2,1":
                return "iPad 2 (Wi-Fi)"
            case "iPad2,2":
                return "iPad 2 (Wi-Fi + 3G GSM)"
            case "iPad2,3":
                return "iPad 2 (Wi-Fi + 3G CDMA)"
            case "iPad2,4":
                return "iPad 2 (Wi-Fi)"         // iPad 2 (Wi-Fi, 2012)
            case "iPad3,1":
                return "iPad (3rd generation) (Wi-Fi)"
            case "iPad3,2":
                return "iPad (3rd generation) (Wi-Fi + Cellular Verizon)"
            case "iPad3,3":
                return "iPad (3rd generation) (Wi-Fi + Cellular)"
            case "iPad3,4":
                return "iPad (4th generation) (Wi-Fi)"
            case "iPad3,5":
                return "iPad (4th generation) (Wi-Fi + Cellular)"
            case "iPad3,6":
                return "iPad (4th generation) (Wi-Fi + Cellular MM)"
            case "iPad4,1":
                return "iPad Air (Wi-Fi)"
            case "iPad4,2":
                return "iPad Air (Wi-Fi + Cellular)"
            case "iPad4,3":
                return "iPad Air (China)"
            case "iPad5,3":
                return "iPad Air 2 (Wi-Fi)"
            case "iPad5,4":
                return "iPad Air 2 (Wi-Fi + Cellular)"
            case "iPad6,11":
                return "iPad (5th generation) (Wi-Fi)"
            case "iPad6,12":
                return "iPad (5th generation) (Wi-Fi + Cellular)"
            case "iPad7,5":
                return "iPad (6th generation) (Wi-Fi)"
            case "iPad7,6":
                return "iPad (6th generation) (Wi-Fi + Cellular)"
            
            // iPad mini
            case "iPad2,5":
                return "iPad mini (Wi-Fi)"
            case "iPad2,6":
                return "iPad mini (Wi-Fi + Cellular)"
            case "iPad2,7":
                return "iPad mini (Wi-Fi + Cellular MM)"
            case "iPad4,4":
                return "iPad mini 2 (Wi-Fi)"
            case "iPad4,5":
                return "iPad mini 2 (Wi-Fi + Cellular)"
            case "iPad4,6":
                return "iPad mini 2 (China)"
            case "iPad4,7":
                return "iPad mini 3 (Wi-Fi)"
            case "iPad4,8":
                return "iPad mini 3 (Wi-Fi + Cellular)"
            case "iPad4,9":
                return "iPad mini 3 (China)"
            case "iPad5,1":
                return "iPad mini 4 (Wi-Fi)"
            case "iPad5,2":
                return "iPad mini 4 (Wi-Fi + Cellular)"
            
            // iPad Pro
            case "iPad6,3":
                return "iPad Pro (9.7-inch) (Wi-Fi)"
            case "iPad6,4":
                return "iPad Pro (9.7-inch) (Wi-Fi + Cellular)"
            case "iPad6,7":
                return "iPad Pro (12.9-inch) (Wi-Fi)"
            case "iPad6,8":
                return "iPad Pro (12.9-inch) (Wi-Fi + Cellular)"
            case "iPad7,1":
                return "iPad Pro (12.9-inch) (2nd generation) (Wi-Fi)"
            case "iPad7,2":
                return "iPad Pro (12.9-inch) (2nd generation) (Wi-Fi + Cellular)"
            case "iPad7,3":
                return "iPad Pro (10.5-inch) (Wi-Fi)"
            case "iPad7,4":
                return "iPad Pro (10.5-inch) (Wi-Fi + Cellular)"
            
            // Apple TV
            case "AppleTV2,1":
                return "Apple TV (2nd generation)"
            case "AppleTV3,1":
                return "Apple TV (3rd generation)"
            case "AppleTV3,2":
                return "Apple TV (3rd generation)"
            
            // iOS simulator
            case "i386":
                return "iOS simulator"
            case "x86_64":
                return "iOS simulator"
            
            default:
                return "Unknown Hardware \(model)"
        }
        //return "Unknown Hardware \(model)"
    }
    
    func cpu() -> String {
        var size = 0
        sysctlbyname("machdep.cpu.brand_string", nil, &size, nil, 0)
        var machine = [CChar](repeating: 0,  count: Int(size))
        sysctlbyname("machdep.cpu.brand_string", &machine, &size, nil, 0)
        return String(cString: machine)
        
    }
    
    func cpuFreq() -> String {
        var size = 0
        sysctlbyname("hw.cpufrequency", nil, &size, nil, 0)
        var machine = [CChar](repeating: 0,  count: Int(size))
        sysctlbyname("hw.cpufrequency", &machine, &size, nil, 0)
        return String(cString: machine)
        
    }
}
