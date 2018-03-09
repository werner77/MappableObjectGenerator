import Foundation

protocol EmployeeType: PersonType {
    var employeeNumber: String? { get set }
}

struct Employee: EmployeeType {

    static let schemaID = "urn:jsonschema:com:behindmedia:Employee"

    // MARK: Coding keys
    enum CodingKeys: String, CodingKey {
        case employeeNumber = "employeeNumber"
        case ipv6Address = "ipv6Address"
        case emailAddress = "emailAddress"
        case backgroundImages = "backgroundImages"
        case personalBest100Meters = "personalBest100Meters"
        case ipv4Address = "ipv4Address"
        case age = "age"
        case birthDate = "birthDate"
        case homePage = "homePage"
        case hostName = "hostName"
        case userName = "userName"
        case married = "married"
        case nickNames = "nickNames"
        case profileImage = "profileImage"
        case petName = "petName"
        case luckyEvenNumber = "luckyEvenNumber"
        case name = "name"
        case gender = "gender"
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
    var personalBest100Meters: Double?
    var ipv4Address: String?
    var age: Int?
    var birthDate: Date?
    var homePage: URL?
    var hostName: String?
    var userName: String?
    var married: Bool?
    var nickNames: Array<String>?
    var profileImage: ImageType? {
        willSet(newValue) {
            precondition(newValue == nil || newValue is Image, "New value should be an instance of Image but was: \(String(describing: newValue))")
        }
    }
    var petName: String?
    var luckyEvenNumber: Int?
    var name: String?
    var gender: PersonGenderType?

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
        personalBest100Meters = try container.decodeIfPresent(Double.self, forKey: .personalBest100Meters)
        ipv4Address = try container.decodeIfPresent(String.self, forKey: .ipv4Address)
        age = try container.decodeIfPresent(Int.self, forKey: .age)
        birthDate = try container.decodeIfPresent(Date.self, forKey: .birthDate)
        homePage = try container.decodeIfPresent(URL.self, forKey: .homePage)
        hostName = try container.decodeIfPresent(String.self, forKey: .hostName)
        userName = try container.decodeIfPresent(String.self, forKey: .userName)
        married = try container.decodeIfPresent(Bool.self, forKey: .married)
        nickNames = try container.decodeIfPresent(Array<String>.self, forKey: .nickNames)
        profileImage = try container.decodeIfPresent(Image.self, forKey: .profileImage)
        petName = try container.decodeIfPresent(String.self, forKey: .petName)
        luckyEvenNumber = try container.decodeIfPresent(Int.self, forKey: .luckyEvenNumber)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        gender = try container.decodeIfPresent(PersonGenderType.self, forKey: .gender)
    }

    // MARK: Encodable implementation
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(employeeNumber, forKey: .employeeNumber)
        try container.encodeIfPresent(ipv6Address, forKey: .ipv6Address)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(backgroundImages as? Array<Image>, forKey: .backgroundImages)
        try container.encodeIfPresent(personalBest100Meters, forKey: .personalBest100Meters)
        try container.encodeIfPresent(ipv4Address, forKey: .ipv4Address)
        try container.encodeIfPresent(age, forKey: .age)
        try container.encodeIfPresent(birthDate, forKey: .birthDate)
        try container.encodeIfPresent(homePage, forKey: .homePage)
        try container.encodeIfPresent(hostName, forKey: .hostName)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(married, forKey: .married)
        try container.encodeIfPresent(nickNames, forKey: .nickNames)
        try container.encodeIfPresent(profileImage as? Image, forKey: .profileImage)
        try container.encodeIfPresent(petName, forKey: .petName)
        try container.encodeIfPresent(luckyEvenNumber, forKey: .luckyEvenNumber)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(gender, forKey: .gender)
    }

    // MARK: Validation
    func validate() -> ValidationResult {
        let validator = ObjectValidator(object: self)
        validator.withKeyPath(\Employee.employeeNumber, required: true)?.validateMinLength(10).validateMaxLength(10)
        validator.withKeyPath(\Employee.ipv6Address)?.validateIPV6Address()
        validator.withKeyPath(\Employee.emailAddress)?.validateEmailAddress()
        validator.withKeyPath(\Employee.ipv4Address)?.validateIPV4Address()
        validator.withKeyPath(\Employee.age, required: true)
        validator.withKeyPath(\Employee.hostName)?.validateHostName()
        validator.withKeyPath(\Employee.userName, required: true)?.validateMaxLength(10).validatePattern("^[a-zA-Z0-9]{6,}$")
        validator.withKeyPath(\Employee.married, required: true)
        validator.withKeyPath(\Employee.nickNames)?.validateMinItems(1).validateMaxItems(5).validateUniqueItems()
        validator.withKeyPath(\Employee.petName)?.validateMinLength(6).validatePattern("ing")
        validator.withKeyPath(\Employee.name, required: true)
        validator.withKeyPath(\Employee.gender, required: true)
        return validator.evaluate()
    }
}
