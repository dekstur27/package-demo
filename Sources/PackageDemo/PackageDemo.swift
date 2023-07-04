import Foundation

public struct PackageDemo {
    public static func objectFromJSON<T: Codable>(_ filename: String) -> T? {
        
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
    
    public static var testJSON: String? = {
        if let path = Bundle.main.path(forResource: "testJSON", ofType: "json"),
           let jsonData = try? Data(contentsOf: URL(string: path)!)
        {
            let string = String(data: jsonData, encoding: .utf8)
            print("xx-> \(String(describing: string))")
            return string
        }
        return nil
    }()
}



