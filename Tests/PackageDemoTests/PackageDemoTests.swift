import XCTest
@testable import PackageDemo

final class PackageDemoTests: XCTestCase {
    func testJSON() {
        if let jsonString = PackageDemo.testJSON {
            print(jsonString)
        }
    }
}
