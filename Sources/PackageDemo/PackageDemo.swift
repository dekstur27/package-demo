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

        let bundle = Bundle.module
        if let fileUrl = bundle.url(forResource: "testJSON", withExtension: "json") {
            do {
                let jsonData = try Data(contentsOf: fileUrl)
                return String(data: jsonData, encoding: .utf8)
            } catch {
                print("xx-> \(error)")
                return nil
            }
        }
        return nil
        
    }()
}

