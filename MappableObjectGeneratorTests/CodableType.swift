//
//  CodableType.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 08/03/2018.
//

import Foundation

protocol CodableType: Codable {
    static var schemaID: String { get }
}
