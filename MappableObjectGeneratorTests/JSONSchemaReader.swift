//
//  JSONSchemaReader.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 08/03/2018.
//

import Foundation

enum JSONReadError: Error {
    case fileNotFound
    case invalidData
    case invalidSchemaURL
}

final class JSONReader: NSObject, KiteJSONSchemaRefDelegate {
    
    func readJSONData(_ resourceName: String) throws -> Data {
        let bundle = Bundle(for: JSONReader.self)
        guard let url = bundle.url(forResource: resourceName, withExtension: "json") else {
            throw JSONReadError.fileNotFound
        }
        
        let data = try Data(contentsOf: url)
        return data
    }
    
    func readJSONSchema(_ resourceName: String) throws -> [String: Any] {
        let data = try readJSONData(resourceName)
        guard let schemaDict = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            throw JSONReadError.invalidData
        }
        
        return schemaDict
    }
    
    func readJSONSchemaData(_ refURL: URL) throws -> Data {
        guard let resourceName = refURL.absoluteString.components(separatedBy: ":").last else {
            throw JSONReadError.invalidSchemaURL
        }
        return try readJSONData(resourceName)
    }

    func schemaValidator(_ validator: KiteJSONValidator, requiresSchemaDataForRefURL refURL: URL) -> Data? {
        do {
            return try readJSONSchemaData(refURL)
        } catch (let error) {
            print("Could not read schema data for URL '\(refURL): \(error)")
            return nil
        }
    }
}
