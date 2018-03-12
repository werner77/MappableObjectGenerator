//
//  MappableObjectGeneratorTests.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 22/02/2018.
//

import XCTest

class MappableObjectGeneratorTests: XCTestCase {

    private var encoder: JSONEncoder!
    private var decoder: JSONDecoder!
    private var reader: JSONReader!
    private var validator: KiteJSONValidator!
    
    override func setUp() {
        super.setUp()
        decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601

        reader = JSONReader()
        validator = KiteJSONValidator()
        validator.delegate = reader
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPersonEncoding() throws {

        let validData = try reader.readJSONData("valid-employee")
        let person = try decoder.decode(Person.self, from: validData)

        let jsonData = try encoder.encode(person)

        let jsonString: String = String(data: jsonData, encoding: .utf8)!

        print("Person:\n\(jsonString)\n")

        do {
            try validate(jsonData, against: Person.schemaID)
            switch person.validate() {
            case .valid:
                break
            case .invalid(let validationErrors):
                XCTFail("Expected no validation errors but got: \(validationErrors)")
            }
        } catch(let error as NSError) {
            print("Validation error: \(error.fullStacktrace)\n")
            XCTFail("Expected encoded jsonData to be valid according to schema")
        }
    }
    
    func testEmployeeEncoding() throws {

        let validData = try reader.readJSONData("valid-employee")
        let employee = try decoder.decode(Employee.self, from: validData)

        let jsonData = try encoder.encode(employee)

        let jsonString: String = String(data: jsonData, encoding: .utf8)!

        print("Employee:\n\(jsonString)\n")

        do {
            try validate(jsonData, against: Employee.schemaID)
            switch employee.validate() {
            case .valid:
                break
            case .invalid(let validationErrors):
                XCTFail("Expected no validation errors but got: \(validationErrors)")
            }
        } catch(let error as NSError) {
            print("Validation error: \(error.fullStacktrace)\n")
            XCTFail("Expected encoded jsonData to be valid according to schema")
        }
    }

    func testInvalidEmployee() throws {
        let jsonData = try reader.readJSONData("invalid-employee1")

        do {
            try validate(jsonData, against: Employee.schemaID)
            XCTFail("Expected validation error to occur")
        } catch(let error as NSError) {
            print("Validation error: \(error.fullStacktrace)\n")
        }

        let employee: EmployeeType = try decoder.decode(Employee.self, from: jsonData)
        
        switch employee.validate() {
        case .valid:
            XCTFail("Expected validation to report invalid state")
        case .invalid(let validationErrors):
            print("Validation errors:\n\(validationErrors)\n")
        }
    }

    func validate(_ jsonData: Data, against schemaID: String) throws {
        let schemaData = try reader.readJSONSchemaData(URL(string: schemaID)!)
        try validator.validateJSONData(jsonData, withSchemaData: schemaData)
    }
}

extension NSError {
    var fullStacktrace: String {
        var error: NSError? = self
        var ret: String = ""

        while error != nil {
            if let desc = error?.localizedDescription {
                if !ret.isEmpty {
                    ret += "\n\nCaused by:\n\n"
                }
                ret += desc
            }
            error = error?.underlyingError
        }
        return ret
    }

    var underlyingError: NSError? {
        return self.userInfo[NSUnderlyingErrorKey] as? NSError
    }
}
