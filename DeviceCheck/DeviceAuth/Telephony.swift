
import CoreTelephony

class Telephony {
    
    func carrierNameString() -> String {
        // Setup the Network Info and create a CTCarrier object
        let networkInfo = CTTelephonyNetworkInfo()
        let carrier = networkInfo.subscriberCellularProvider
        
        // Get carrier name
        var carrierName = carrier?.carrierName
        
        if (carrierName == nil) {
            carrierName = "(null)"
        }
        
        return carrierName!
    }
    
    func isoCountryCodeString() -> String {
        // Setup the Network Info and create a CTCarrier object
        let networkInfo = CTTelephonyNetworkInfo()
        let carrier = networkInfo.subscriberCellularProvider
        
        // Get carrier name
        var isoCountryCode = carrier?.isoCountryCode
        
        if (isoCountryCode == nil) {
            isoCountryCode = "(null)"
        }
        
        return isoCountryCode!
    }
    
    func mobileCountryCodeString() -> String {
        // Setup the Network Info and create a CTCarrier object
        let networkInfo = CTTelephonyNetworkInfo()
        let carrier = networkInfo.subscriberCellularProvider
        
        // Get carrier name
        var mobileCountryCode = carrier?.mobileCountryCode
        
        if (mobileCountryCode == nil) {
            mobileCountryCode = "(null)"
        }
        
        return mobileCountryCode!
    }
    
    func mobileNetworkCodeString() -> String {
        // Setup the Network Info and create a CTCarrier object
        let networkInfo = CTTelephonyNetworkInfo()
        let carrier = networkInfo.subscriberCellularProvider
        
        // Get carrier name
        var mobileNetworkCode = carrier?.mobileNetworkCode
        
        if (mobileNetworkCode == nil) {
            mobileNetworkCode = "(null)"
        }
        
        return mobileNetworkCode!
    }
    
}
