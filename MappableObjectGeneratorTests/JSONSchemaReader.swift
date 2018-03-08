//
//  JSONSchemaReader.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 08/03/2018.
//

import Foundation

enum JSONSchemaReadError: Error {
    case fileNotFound
    case invalidData
    case invalidSchemaURL
}

final class JSONSchemaReader: NSObject, KiteJSONSchemaRefDelegate {
    
    func readJSONData(_ resourceName: String) throws -> Data {
        let bundle = Bundle(for: JSONSchemaReader.self)
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
    
    func readJSONSchemaData(_ refURL: URL) throws -> Data {
        guard let resourceName = refURL.absoluteString.components(separatedBy: ":").last else {
            throw JSONSchemaReadError.invalidSchemaURL
        }
        return try JSONSchemaReader.readJSONData(resourceName)
    }
}
