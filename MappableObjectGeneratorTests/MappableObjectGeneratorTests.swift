//
//  MappableObjectGeneratorTests.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 22/02/2018.
//

import XCTest

class MappableObjectGeneratorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEncoding() throws {
        let versionSupportResource = VersionSupportResource()
        let imageCommand = ImageCommand()
        
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
        let data = try encoder.encode(versionSupportResource)
        
        print(String(data: data, encoding: .utf8)!)
    }
    
}
