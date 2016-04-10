import Foundation
import XCTest
import CMySQLClient

@testable import MySQL

public class MySQLFieldParserTests: XCTestCase {
  public func testParseSetsFieldName() {
    let name = "myname"
    let parser = MySQLFieldParser()

    var field = MYSQL_FIELD()
    field.name = "myname".getUnsafeMutablePointer()

    let header = parser.parse(field)

    XCTAssertEqual(name, header.name, "Name should be equal")
  }
}

extension MySQLFieldParserTests {
    static var allTests: [(String, MySQLFieldParserTests -> () throws -> Void)] {
      return [
        ("testParseSetsFieldName", testParseSetsFieldName)
      ]
    }
}
