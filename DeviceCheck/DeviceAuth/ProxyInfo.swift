
import CFNetwork.CFProxySupport

class ProxyInfo {
    
    func checkProxy() -> String {
        
        
        let proxySettings = CFNetworkCopySystemProxySettings()
        let values = proxySettings?.takeRetainedValue()
        
        //let kCFNetworkProxiesHTTPEnable: CFString
        //let kCFNetworkProxiesHTTPSEnable: CFString
        
        //let test1 = kCFNetworkProxiesHTTPEnable
        //let test2 = kCFNetworkProxiesHTTPSEnable
        
        return values as! String
    }
}
