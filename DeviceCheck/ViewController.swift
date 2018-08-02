
import UIKit

class ViewController: UIViewController {

    // MARK:
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let hardware = Hardware()
        let telephony = Telephony()
        let captiveNetwork = CaptiveNetwork()
        let proxyInfo = ProxyInfo()
        let network = Network()
        
        print("Model :      \(hardware.modelString())")
        print("OS ver. :    \(UIDevice.current.systemVersion)")
        print("Carrier :    \(telephony.carrierNameString())")
        print("ISO Code :   \(telephony.isoCountryCodeString())")
        print("MCC :        \(telephony.mobileCountryCodeString())")
        print("MNC :        \(telephony.mobileNetworkCodeString())")
        print("SSID :       \(captiveNetwork.ssidString())")
        print("BSSID :      \(captiveNetwork.bssidString())")
      //print("Proxy :      \(proxyInfo.checkProxy())")
        print("Public IP :  \(network.getIPAddress())")
    }

    // MARK: 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // network status
    // IP Address
    // checkroot
    // proxy
    // vpn
    // uuid by keychain
}

