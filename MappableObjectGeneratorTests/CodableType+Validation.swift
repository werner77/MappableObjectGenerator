//
//  CodableType+Validation.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 08/03/2018.
//

import Foundation

extension CodableType {
    func validate() throws {
        let validator = KiteJSONValidator()
        let reader = JSONSchemaReader()
        validator.delegate = reader
        
        let schemaData = try reader.readJSONSchemaData(URL(string: Self.self.schemaID)!)
        try validator.validateJSONInstance(self, withSchemaData: schemaData)
    }
}
