//
//  MappableObjectGeneratorTests.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 22/02/2018.
//

import XCTest

class MappableObjectGeneratorTests: XCTestCase {
    
    enum JSONSchemaReadError: Error {
        case fileNotFound
        case invalidData
    }
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func readJSONData(_ resourceName: String) throws -> Data {
        let bundle = Bundle(for: MappableObjectGeneratorTests.self)
        guard let url = bundle.url(forResource: resourceName, withExtension: "json") else {
            throw JSONSchemaReadError.fileNotFound
        }
        
        let data = try Data(contentsOf: url)
        return data
    }
    
    func readJSONSchema(_ resourceName: String) throws -> [String: Any] {
        let data = try readJSONData(resourceName)
        guard let schemaDict = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            throw JSONSchemaReadError.invalidData
        }
        
        return schemaDict
    }
    
    func testEncoding() throws {
        var versionSupportResource: VersionSupportResource = VersionSupportResourceDTO()
        var imageCommand: ImageCommand = ImageCommandDTO()
        
        imageCommand.height = 500
        imageCommand.width = 600
        imageCommand.url = "https://www.google.com"
        imageCommand.src = "some-source"
        
        versionSupportResource.imageCommand = imageCommand
        versionSupportResource.buttonText = "some-button-text"
        versionSupportResource.contents = "some-contents"
        versionSupportResource.header = "some-header"
        versionSupportResource.supportLevel = "some-support-level"
        versionSupportResource.title = "some-title"
        versionSupportResource.url = "https://somehost/somepath"
        
        let encoder = JSONEncoder()
        let jsonData = try encoder.encode(versionSupportResource as! VersionSupportResourceDTO)
        let resourceName = "com.ahold.ecommerce.api.generic.resources.VersionSupportResource"
        let validator = KiteJSONValidator()
        let schemaData = try readJSONData(resourceName)
        let valid = validator.validateJSONData(jsonData, withSchemaData: schemaData)
        
        XCTAssertTrue(valid, "Expected encoded jsonData to be valid according to schema")
    }
}
