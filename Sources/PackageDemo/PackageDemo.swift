import Foundation

public struct PackageDemo {
    static func objectFromJSON<T: Codable>(_ filename: String) -> T? {
        
        let decoder = JSONDecoder()
        
        if let path = Bundle.main.path(forResource: filename, ofType: "json"),
           let jsonData = NSData(contentsOfFile: path)
        {
            let jsonObject = try! decoder.decode(T.self, from: jsonData as Data)
            return jsonObject
        } else {
            return nil
        }
    }
}



