//
//  JSONValidator.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 09/03/2018.
//

import Foundation

struct ValidationError {
    let code: Int
    let message: String
    
    init(code: Int = 0, message: String) {
        self.code = code
        self.message = message
    }
}

enum ValidationResult {
    case valid
    case invalid([AnyKeyPath: [ValidationError]])
}

fileprivate let kURIPattern: NSRegularExpression = (try? NSRegularExpression(pattern: "^((?<=\\()[A-Za-z][A-Za-z0-9\\+\\.\\-]*:([A-Za-z0-9\\.\\-_~:/\\?#\\[\\]@!\\$&'\\(\\)\\*\\+,;=]|%[A-Fa-f0-9]{2})+(?=\\)))|([A-Za-z][A-Za-z0-9\\+\\.\\-]*:([A-Za-z0-9\\.\\-_~:/\\?#\\[\\]@!\\$&'\\(\\)\\*\\+,;=]|%[A-Fa-f0-9]{2})+)$", options: NSRegularExpression.Options(rawValue: 0)))!

fileprivate let kEmailPattern: NSRegularExpression = (try? NSRegularExpression(pattern: "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$", options: NSRegularExpression.Options(rawValue: 0)))!

fileprivate let kHostnamePattern: NSRegularExpression = (try? NSRegularExpression(pattern: "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9])$", options: NSRegularExpression.Options(rawValue: 0)))!

fileprivate let kIPV4Pattern: NSRegularExpression = (try? NSRegularExpression(pattern: "^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", options: NSRegularExpression.Options(rawValue: 0)))!


class ObjectValidator<T> {
    
    private let object: T
    private var errors = [AnyKeyPath: [ValidationError]]()
    
    private var currentValue: Any?
    private var currentKeyPath: AnyKeyPath?
    
    init(object: T) {
        self.object = object
    }
    
    @discardableResult
    func withKeyPath(_ keyPath: PartialKeyPath<T>) -> ObjectValidator {
        currentKeyPath = keyPath
        currentValue = object[keyPath: keyPath]
        return self
    }
    
    @discardableResult
    func validateIPv4() -> ObjectValidator {
        if let stringValue = verifyCurrentValueType(String.self) {
            if !matchesRegex(string: stringValue, regex: kIPV4Pattern) {
                addError(message: "Not a valid IPV4 address")
            }
        }
        return self
    }
    
    @discardableResult
    func validateIPv6() -> ObjectValidator {
        if let stringValue = verifyCurrentValueType(String.self) {
            var buf = UnsafeMutablePointer<Int8>.allocate(capacity: Int(INET6_ADDRSTRLEN))
            if inet_pton(AF_INET6, stringValue, &buf) != 1 {
                addError(message: "Not a valid IPV6 address")
            }
        }
        return self
    }
    
    @discardableResult
    func validateEmailAddress() -> ObjectValidator {
        if let stringValue = verifyCurrentValueType(String.self) {
            if !matchesRegex(string: stringValue, regex: kEmailPattern) {
                addError(message: "Not a valid email address")
            }
        }
        return self
    }
    
    @discardableResult
    func validateHostName() -> ObjectValidator {
        if let stringValue = verifyCurrentValueType(String.self) {
            if !matchesRegex(string: stringValue, regex: kHostnamePattern) {
                addError(message: "Not a valid host name")
            }
        }
        return self
    }
    
    @discardableResult
    func validateURI() -> ObjectValidator {
        if let stringValue = verifyCurrentValueType(String.self) {
            if !matchesRegex(string: stringValue, regex: kURIPattern) {
                addError(message: "Not a valid URI")
            }
        }
        return self
    }
    
    @discardableResult
    func validatePattern(_ pattern: String) -> ObjectValidator {
        if let stringValue = verifyCurrentValueType(String.self) {
            do {
                let expression = try NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options(rawValue: 0))
                if !matchesRegex(string: stringValue, regex: expression) {
                    addError(message: "Does not match pattern: \(pattern)")
                }
            } catch let error {
                addError(message: "Pattern is not a valid regular expression: \(pattern): \(error)")
            }
        }
        return self
    }
    
    @discardableResult
    func validateMinLength(_ minLength: Int) -> ObjectValidator {
        if let stringValue = verifyCurrentValueType(String.self) {
            if stringValue.count < minLength {
                addError(message: "Length should be >= \(minLength)")
            }
        }
        return self
    }
    
    @discardableResult
    func validateMaxLength(_ maxLength: Int) -> ObjectValidator {
        if let stringValue = verifyCurrentValueType(String.self) {
            if stringValue.count > maxLength {
                addError(message: "Length should be <= \(maxLength)")
            }
        }
        return self
    }
    
    @discardableResult
    func evaluate() -> ValidationResult {
        if errors.isEmpty {
            return ValidationResult.valid
        } else {
            return ValidationResult.invalid(errors)
        }
    }
    
    private func matchesRegex(string: String, regex: NSRegularExpression, fullMatch: Bool = false) -> Bool {
        let nsString = string as NSString
        let range = NSMakeRange(0, nsString.length)
        let result = regex.matches(in: string, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: range)
        let matchCount = result.count
        if matchCount == 0 {
            return false
        }
        if fullMatch {
            if matchCount != 1 {
                return false
            }
            let foundRange = result[0].range
            if foundRange.location != 0 || foundRange.length != nsString.length {
                return false
            }
        }
        return true
    }
    
    private func verifyCurrentValueType<U>(_ type: U.Type) -> U? {
        guard let typedValue = self.currentValue as? U else {
            addError(message: "Value should be of type: \(type)")
            return nil
        }
        return typedValue
    }
    
    private func addError(code: Int = 0, message: String) {
        if let keyPath = currentKeyPath {
            var errorArray = errors[keyPath, default: [ValidationError]()]
            errorArray.append(ValidationError(code: code, message: message))
            errors[keyPath] = errorArray
        }
    }
}

