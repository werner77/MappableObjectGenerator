//
//  MappableObjectGeneratorTests.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 22/02/2018.
//

import XCTest

class MappableObjectGeneratorTests: XCTestCase, KiteJSONSchemaRefDelegate {
    
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

        var person: Person = PersonDTO()
        var profileImage: Image = ImageDTO()
        var backgroundImage: Image = ImageDTO()

        profileImage.url = URL(string: "https://www.behindmedia.com/profile.jpg")!
        profileImage.width = 400
        profileImage.height = 600

        backgroundImage.url = URL(string: "https://www.behindmedia.com/background.jpg")!
        backgroundImage.width = 1024
        backgroundImage.height = 768

        // Format: "yyyy-MM-dd'T'HH:mm:ss'Z'"
        let dateFormatter: DateFormatter = BMDateHelper.rfc3339TimestampFormatter()

        person.name = "Werner"
        person.age = 40
        person.birthDate = dateFormatter.date(from: "1977-09-04T12:00:00Z")
        person.emailAddress = "werner.altewischer@gmail.com"
        person.gender = "MALE"
        person.homePage = URL(string: "https://www.behindmedia.com")
        person.hostName = "www.behindmedia.com"
        person.ipv4Address = "81.169.145.95"
        person.ipv6Address = "0:0:0:0:0:FFFF:51A9:915F"
        person.married = false
        person.userName = "bikkel77"
        person.nickNames = ["SportBilly"]
        person.personalBest100Meters = 12.64
        person.petName = "Mingootje"
        person.luckyEvenNumber = 6
        person.profileImage = profileImage
        person.backgroundImages = [backgroundImage]


        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        let jsonData = try encoder.encode(person as! PersonDTO)

        let jsonString: String = String(data: jsonData, encoding: .utf8)!

        print("JSON:\n\(jsonString)")

        let validator = KiteJSONValidator()
        validator.delegate = self

        let personSchemaData = try readJSONData("Person")

        do {
            try validator.validateJSONData(jsonData, withSchemaData: personSchemaData)
        } catch(let error as NSError) {
            print("Validation error: \(error.fullStacktrace)\n")
            XCTFail("Expected encoded jsonData to be valid according to schema")
        }
    }

    // MARK: KiteJSONSchemaRefDelegate implementation
    func schemaValidator(_ validator: KiteJSONValidator, requiresSchemaDataForRefURL refURL: URL) -> Data? {
        guard let resourceName = refURL.absoluteString.components(separatedBy: ":").last else {
            print("Could not determine resourceName from URL: \(refURL)")
            return nil
        }

        do {
            return try readJSONData(resourceName)
        } catch (let error) {
            print("Could not read schema data: \(error)")
        }
        return nil
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
