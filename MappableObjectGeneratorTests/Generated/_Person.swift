import Foundation

protocol PersonType: CodableType {
    var ipv6Address: String? { get set }
    var emailAddress: String? { get set }
    var backgroundImages: Array<ImageType>? { get set }
    var personalBest100Meters: Double? { get set }
    var ipv4Address: String? { get set }
    var age: Int? { get set }
    var birthDate: Date? { get set }
    var homePage: URL? { get set }
    var hostName: String? { get set }
    var userName: String? { get set }
    var married: Bool? { get set }
    var nickNames: Array<String>? { get set }
    var profileImage: ImageType? { get set }
    var petName: String? { get set }
    var luckyEvenNumber: Int? { get set }
    var name: String? { get set }
    var gender: PersonGenderType? { get set }
}

enum PersonGenderType: String, Codable {
    case MALE
    case FEMALE
}

struct Person: PersonType {

    static let schemaID = "urn:jsonschema:com:behindmedia:Person"

    // MARK: Coding keys
    enum CodingKeys: String, CodingKey {
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

    // MARK: No argument initializer
    init() {

    }

    // MARK: Decodable implementation
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
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

    // MARK: properties
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
}
