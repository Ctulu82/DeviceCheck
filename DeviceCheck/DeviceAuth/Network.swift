import Foundation

class Network {
    var ipAddress:String?
    func getIPAddress() {
        
        
        
        guard let ipServiceURL = NSURL(string: "http://www.dyndns.org/cgi-bin/check_ip.cgi") else {
            return
        }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: ipServiceURL as URL, completionHandler: {(data, response, error) -> Void in
            if error != nil {
                //print(error)
                return
            }
            
            let ipHTML = NSString(data: data!, encoding: String.Encoding.utf8.rawValue) as String?
            
            self.ipAddress = self.scanForIPAddress(ipHTML: ipHTML)
            
        })
        
        task.resume()
    }
    
    func scanForIPAddress( ipHTML:String?) -> String? {
        
        if ipHTML == nil {
            return nil
        }
        
        var externalIPAddress:String?
        var index:Int?
        var ipItems:[String]?
        var text:NSString?
        
        let scanner = Scanner(string: ipHTML!)
        
        while scanner.isAtEnd == false {
            scanner.scanUpTo("<", into: nil)
            
            scanner.scanUpTo(">", into: &text)
            
            var ipHTML = ipHTML
            ipHTML = ipHTML?.replacingOccurrences(of: ">", with: " ")
            
            ipItems = ipHTML!.components(separatedBy: " ")
            
            index = ipItems!.index(of: "Address:")
            
            
            externalIPAddress = ipItems![index!]
            
            
            
          
        }
        
        if let ip = externalIPAddress {
            print("External IP Address: \(ip)")
        }
        
        return externalIPAddress
        
    }
}
