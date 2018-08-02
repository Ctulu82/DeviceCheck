
import SystemConfiguration.CaptiveNetwork

class CaptiveNetwork {
    
    func ssidString() -> String {
        let interfaces = CNCopySupportedInterfaces()
        if interfaces == nil {
            return "(null)"
        }
        
        let interfacesArray = interfaces as! [String]
        if interfacesArray.count <= 0 {
            return "(null)"
        }
        
        let interfaceName = interfacesArray[0] as String
        let unsafeInterfaceData =     CNCopyCurrentNetworkInfo(interfaceName as CFString)
        if unsafeInterfaceData == nil {
            return "(null)"
        }
        
        let interfaceData = unsafeInterfaceData as! Dictionary <String,AnyObject>
        
        return (interfaceData["SSID"] as? String)!
    }
    
    func bssidString() -> String {
        let interfaces = CNCopySupportedInterfaces()
        if interfaces == nil {
            return "(null)"
        }
        
        let interfacesArray = interfaces as! [String]
        if interfacesArray.count <= 0 {
            return "(null)"
        }
        
        let interfaceName = interfacesArray[0] as String
        let unsafeInterfaceData =     CNCopyCurrentNetworkInfo(interfaceName as CFString)
        if unsafeInterfaceData == nil {
            return "(null)"
        }
        
        let interfaceData = unsafeInterfaceData as! Dictionary <String,AnyObject>
        
        return (interfaceData["BSSID"] as? String)!
    }
}
