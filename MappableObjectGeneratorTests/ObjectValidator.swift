//
//  JSONValidator.swift
//  MappableObjectGeneratorTests
//
//  Created by Werner Altewischer on 09/03/2018.
//

import Foundation

struct ValidationError: CustomStringConvertible {
    let code: Int
    let message: String
    
    init(code: Int = 0, message: String) {
        self.code = code
        self.message = message
    }
    
    var description: String {
        return self.message
    }
}

struct ValidationErrors: CustomStringConvertible {
    
    private let errors: [NamedKeyPath: ([ValidationError], Any?)]
    
    fileprivate init(_ errors: [NamedKeyPath: ([ValidationError], Any?)]) {
        self.errors = errors
    }
    
    var errorKeyPaths: [NamedKeyPath] {
        return Array(errors.keys)
    }
    
    func errors(for keyPath: NamedKeyPath) -> [ValidationError] {
        return errors[keyPath]?.0 ?? []
    }
    
    func value(for keyPath: NamedKeyPath) -> Any? {
        return errors[keyPath]?.1
    }
    
    var description: String {
        var s = "[\n"
        for keyPath in errorKeyPaths {
            let errors = self.errors(for: keyPath)
            let value = self.value(for: keyPath)
            let valueString = value.map{ let s = String(describing: $0); return $0 is String ? "\"\(s)\"" : s } ?? "nil"
            if !errors.isEmpty {
                s.append("\(type(of: keyPath.keyPath).rootType).\(keyPath.name)(\(valueString)): \(errors)\n")
            }
        }
        s.append("]")
        return s
    }
}

struct NamedKeyPath: Hashable {
    static func ==(lhs: NamedKeyPath, rhs: NamedKeyPath) -> Bool {
        return lhs.keyPath == rhs.keyPath
    }
    
    let keyPath: AnyKeyPath
    let name: String
    
    public var hashValue: Int {
        return keyPath.hashValue
    }
}

enum ValidationResult {
    case valid
    case invalid(ValidationErrors)
}

fileprivate let kURIPattern: NSRegularExpression = (try? NSRegularExpression(pattern: "^((?<=\\()[A-Za-z][A-Za-z0-9\\+\\.\\-]*:([A-Za-z0-9\\.\\-_~:/\\?#\\[\\]@!\\$&'\\(\\)\\*\\+,;=]|%[A-Fa-f0-9]{2})+(?=\\)))|([A-Za-z][A-Za-z0-9\\+\\.\\-]*:([A-Za-z0-9\\.\\-_~:/\\?#\\[\\]@!\\$&'\\(\\)\\*\\+,;=]|%[A-Fa-f0-9]{2})+)$", options: NSRegularExpression.Options(rawValue: 0)))!

fileprivate let kEmailPattern: NSRegularExpression = (try? NSRegularExpression(pattern: "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$", options: NSRegularExpression.Options(rawValue: 0)))!

fileprivate let kHostnamePattern: NSRegularExpression = (try? NSRegularExpression(pattern: "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9])$", options: NSRegularExpression.Options(rawValue: 0)))!

fileprivate let kIPV4Pattern: NSRegularExpression = (try? NSRegularExpression(pattern: "^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", options: NSRegularExpression.Options(rawValue: 0)))!


class ObjectValidator<T> {
    
    private let object: T
    private var errors = [NamedKeyPath: ([ValidationError], Any?)]()
    
    init(object: T) {
        self.object = object
    }
    
    @discardableResult
    func withKeyPath<F>(_ keyPath: KeyPath<T, F?>, name: String = "", required: Bool = false) -> ObjectFieldValidator<T, F>? {
        let namedKeyPath = NamedKeyPath(keyPath: keyPath, name: name)
        if let value = object[keyPath: keyPath] {
            return ObjectFieldValidator<T, F>(objectValidator: self, keyPath: namedKeyPath, value: value)
        } else if required {
            addError(keyPath: namedKeyPath, message: "Value is required")
        }
        return nil
    }
    
    @discardableResult
    func evaluate() -> ValidationResult {
        if errors.isEmpty {
            return ValidationResult.valid
        } else {
            return ValidationResult.invalid(ValidationErrors(errors))
        }
    }
    
    fileprivate func addError(keyPath: NamedKeyPath, code: Int = 0, value: Any? = nil, message: String) {
        var errorArray = errors[keyPath, default: ([ValidationError](), nil)].0
        errorArray.append(ValidationError(code: code, message: message))
        errors[keyPath] = (errorArray, value)
    }
}

class ObjectFieldValidator<T, F> {
    let value: F
    let keyPath: NamedKeyPath
    let objectValidator: ObjectValidator<T>
    
    init(objectValidator: ObjectValidator<T>, keyPath: NamedKeyPath, value: F) {
        self.objectValidator = objectValidator
        self.value = value
        self.keyPath = keyPath
    }
    
    func addError(code: Int = 0, message: String) {
        self.objectValidator.addError(keyPath: keyPath, code: code, value: value, message: message)
    }
}

extension ObjectFieldValidator where F == String {
    
    @discardableResult
    func validateMinLength(_ minLength: Int) -> ObjectFieldValidator<T, F> {
        if value.count < minLength {
            addError(message: "Length should be >= \(minLength)")
        }
        return self
    }
    
    @discardableResult
    func validateMaxLength(_ maxLength: Int) -> ObjectFieldValidator<T, F> {
        if value.count > maxLength {
            addError(message: "Length should be <= \(maxLength)")
        }
        return self
    }
    
    @discardableResult
    func validateIPV4Address() -> ObjectFieldValidator<T, F> {
        if !matchesRegex(string: value, regex: kIPV4Pattern) {
            addError(message: "Not a valid IPV4 address")
        }
        return self
    }
    
    @discardableResult
    func validateIPV6Address() -> ObjectFieldValidator<T, F> {
        var buf = UnsafeMutablePointer<Int8>.allocate(capacity: Int(INET6_ADDRSTRLEN))
        if inet_pton(AF_INET6, value, &buf) != 1 {
            addError(message: "Not a valid IPV6 address")
        }
        return self
    }
    
    @discardableResult
    func validateEmailAddress() -> ObjectFieldValidator<T, F> {
        if !matchesRegex(string: value, regex: kEmailPattern) {
            addError(message: "Not a valid email address")
        }
        return self
    }
    
    @discardableResult
    func validateHostName() -> ObjectFieldValidator<T, F> {
        if !matchesRegex(string: value, regex: kHostnamePattern) {
            addError(message: "Not a valid host name")
        }
        return self
    }
    
    @discardableResult
    func validateURI() -> ObjectFieldValidator<T, F> {
        if !matchesRegex(string: value, regex: kURIPattern) {
            addError(message: "Not a valid URI")
        }
        return self
    }
    
    @discardableResult
    func validatePattern(_ pattern: String) -> ObjectFieldValidator<T, F> {
        do {
            let expression = try NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options(rawValue: 0))
            if !matchesRegex(string: value, regex: expression) {
                addError(message: "Does not match pattern: \"\(pattern)\"")
            }
        } catch let error {
            addError(message: "Pattern is not a valid regular expression: \"\(pattern)\": \(error)")
        }
        return self
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
}

extension ObjectFieldValidator where F: Numeric & Comparable {
    
    @discardableResult
    func validateMinimum(_ minimum: F, exclusive: Bool = false) -> ObjectFieldValidator<T, F> {
        if exclusive && value <= minimum {
            addError(message: "Value should be > \(minimum)")
        } else if !exclusive && value < minimum {
            addError(message: "Value should be >= \(minimum)")
        }
        return self;
    }
    
    @discardableResult
    func validateMaximum(_ maximum: F, exclusive: Bool = false) -> ObjectFieldValidator<T, F> {
        if exclusive && value >= maximum {
            addError(message: "Value should be < \(maximum)")
        } else if !exclusive && value > maximum {
            addError(message: "Value should be <= \(maximum)")
        }
        return self;
    }
}

extension ObjectFieldValidator where F: BinaryInteger {
    
    @discardableResult
    func validateMultipleOf(_ divisor: F) -> ObjectFieldValidator<T, F> {
        if divisor != 0 && value % divisor != 0 {
            addError(message: "Value should be a multiple of \(divisor)")
        }
        return self;
    }
}

extension ObjectFieldValidator where F: BinaryFloatingPoint {
    
    @discardableResult
    func validateMultipleOf(_ divisor: F) -> ObjectFieldValidator<T, F> {
        if divisor != 0.0 {
            let result = value / divisor
            if result != floor(result) {
                addError(message: "Value should be a multiple of \(divisor)")
            }
        }
        return self;
    }
}

extension ObjectFieldValidator where F: Collection {
    
    @discardableResult
    func validateMinItems(_ minItems: Int) -> ObjectFieldValidator<T, F> {
        if value.count < minItems {
            addError(message: "Size of collection should be >= \(minItems)")
        }
        return self;
    }
    
    @discardableResult
    func validateMaxItems(_ maxItems: Int) -> ObjectFieldValidator<T, F> {
        if value.count > maxItems {
            addError(message: "Size of collection should be <= \(maxItems)")
        }
        return self;
    }
}

extension ObjectFieldValidator where F: Collection, F.Element: Hashable {
    
    @discardableResult
    func validateUniqueItems() -> ObjectFieldValidator<T, F> {
        let set = Set(value)
        if set.count != value.count {
            addError(message: "All items should be unique")
        }
        return self
    }
}
