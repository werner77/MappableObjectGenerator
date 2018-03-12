import Foundation

protocol EmployeeType: PersonType {
    var employeeNumber: String? { get set }
}

struct Employee: EmployeeType {

    static let schemaID = "http://www.behindmedia.com/schemas/Employee.json"

    // MARK: Coding keys
    enum CodingKeys: String, CodingKey {
        case employeeNumber = "employeeNumber"
        case ipv6Address = "ipv6Address"
        case emailAddress = "emailAddress"
        case backgroundImages = "backgroundImages"
        case gender = "gender"
        case ipv4Address = "ipv4Address"
        case age = "age"
        case birthDate = "birthDate"
        case homePage = "homePage"
        case hostName = "hostName"
        case someNegativeInteger = "someNegativeInteger"
        case userName = "userName"
        case married = "married"
        case nickNames = "nickNames"
        case somePositiveInteger = "somePositiveInteger"
        case profileImage = "profileImage"
        case petName = "petName"
        case luckyEvenNumber = "luckyEvenNumber"
        case personalBest500Meters = "personalBest500Meters"
        case name = "name"
    }
    
    // MARK: properties
    var employeeNumber: String?
    var ipv6Address: String?
    var emailAddress: String?
    var backgroundImages: Array<ImageType>? {
        willSet(newValue) {
            precondition(newValue == nil || newValue is Array<Image>, "New value should be an instance of Array<Image> but was: \(String(describing: newValue))")
        }
    }
    var gender: Person.GenderType?
    var ipv4Address: String?
    var age: Int?
    var birthDate: Date?
    var homePage: URL?
    var hostName: String?
    var someNegativeInteger: Int?
    var userName: String?
    var married: Bool?
    var nickNames: Array<String>?
    var somePositiveInteger: Int?
    var profileImage: ImageType? {
        willSet(newValue) {
            precondition(newValue == nil || newValue is Image, "New value should be an instance of Image but was: \(String(describing: newValue))")
        }
    }
    var petName: String?
    var luckyEvenNumber: Int?
    var personalBest500Meters: Double?
    var name: String?

    // MARK: No argument initializer
    init() {

    }

    // MARK: Decodable implementation
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        employeeNumber = try container.decodeIfPresent(String.self, forKey: .employeeNumber)
        ipv6Address = try container.decodeIfPresent(String.self, forKey: .ipv6Address)
        emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        backgroundImages = try container.decodeIfPresent(Array<Image>.self, forKey: .backgroundImages)
        gender = try container.decodeIfPresent(Person.GenderType.self, forKey: .gender)
        ipv4Address = try container.decodeIfPresent(String.self, forKey: .ipv4Address)
        age = try container.decodeIfPresent(Int.self, forKey: .age)
        birthDate = try container.decodeIfPresent(Date.self, forKey: .birthDate)
        homePage = try container.decodeIfPresent(URL.self, forKey: .homePage)
        hostName = try container.decodeIfPresent(String.self, forKey: .hostName)
        someNegativeInteger = try container.decodeIfPresent(Int.self, forKey: .someNegativeInteger)
        userName = try container.decodeIfPresent(String.self, forKey: .userName)
        married = try container.decodeIfPresent(Bool.self, forKey: .married)
        nickNames = try container.decodeIfPresent(Array<String>.self, forKey: .nickNames)
        somePositiveInteger = try container.decodeIfPresent(Int.self, forKey: .somePositiveInteger)
        profileImage = try container.decodeIfPresent(Image.self, forKey: .profileImage)
        petName = try container.decodeIfPresent(String.self, forKey: .petName)
        luckyEvenNumber = try container.decodeIfPresent(Int.self, forKey: .luckyEvenNumber)
        personalBest500Meters = try container.decodeIfPresent(Double.self, forKey: .personalBest500Meters)
        name = try container.decodeIfPresent(String.self, forKey: .name)
    }

    // MARK: Encodable implementation
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(employeeNumber, forKey: .employeeNumber)
        try container.encodeIfPresent(ipv6Address, forKey: .ipv6Address)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(backgroundImages as? Array<Image>, forKey: .backgroundImages)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(ipv4Address, forKey: .ipv4Address)
        try container.encodeIfPresent(age, forKey: .age)
        try container.encodeIfPresent(birthDate, forKey: .birthDate)
        try container.encodeIfPresent(homePage, forKey: .homePage)
        try container.encodeIfPresent(hostName, forKey: .hostName)
        try container.encodeIfPresent(someNegativeInteger, forKey: .someNegativeInteger)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(married, forKey: .married)
        try container.encodeIfPresent(nickNames, forKey: .nickNames)
        try container.encodeIfPresent(somePositiveInteger, forKey: .somePositiveInteger)
        try container.encodeIfPresent(profileImage as? Image, forKey: .profileImage)
        try container.encodeIfPresent(petName, forKey: .petName)
        try container.encodeIfPresent(luckyEvenNumber, forKey: .luckyEvenNumber)
        try container.encodeIfPresent(personalBest500Meters, forKey: .personalBest500Meters)
        try container.encodeIfPresent(name, forKey: .name)
    }

    // MARK: Validation
    func validate() -> ValidationResult {
        let validator = ObjectValidator(object: self)
        validator.withKeyPath(\Employee.employeeNumber, required: true)?.validateMinLength(10).validateMaxLength(10)
        validator.withKeyPath(\Employee.ipv6Address)?.validateIPV6Address()
        validator.withKeyPath(\Employee.emailAddress)?.validateEmailAddress()
        validator.withKeyPath(\Employee.gender, required: true)
        validator.withKeyPath(\Employee.ipv4Address)?.validateIPV4Address()
        validator.withKeyPath(\Employee.age, required: true)?.validateMinimum(0).validateMaximum(100, exclusive: true)
        validator.withKeyPath(\Employee.hostName)?.validateHostName()
        validator.withKeyPath(\Employee.someNegativeInteger)?.validateMaximum(0, exclusive: true)
        validator.withKeyPath(\Employee.userName, required: true)?.validateMaxLength(10).validatePattern("^[a-zA-Z0-9]{6,}$")
        validator.withKeyPath(\Employee.married, required: true)
        validator.withKeyPath(\Employee.nickNames)?.validateMinItems(1).validateMaxItems(5).validateUniqueItems()
        validator.withKeyPath(\Employee.somePositiveInteger)?.validateMinimum(0, exclusive: true)
        validator.withKeyPath(\Employee.petName)?.validateMinLength(6).validatePattern("ing")
        validator.withKeyPath(\Employee.luckyEvenNumber)?.validateMultipleOf(2)
        validator.withKeyPath(\Employee.personalBest500Meters)?.validateMinimum(5).validateMultipleOf(0.1)
        validator.withKeyPath(\Employee.name, required: true)
        return validator.evaluate()
    }
}
