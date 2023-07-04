import XCTest
@testable import PackageDemo

final class PackageDemoTests: XCTestCase {
    func testJSON() {
        if let jsonString = PackageDemo.testJSON {
            print(jsonString)
            
        } else {
            XCTFail()
        }
    }
    
    func testYAML() {
        if let yamlString = PackageDemo.testYAML {
            print(yamlString)
            
        } else {
            XCTFail()
        }
    }
}
