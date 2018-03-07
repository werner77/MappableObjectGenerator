import Foundation

enum PersonGenderType: String, Codable {
    case MALE
    case FEMALE

}

protocol Person: Codable {

    var ipv6Address: String? { get set }
    
    var emailAddress: String? { get set }
    
    var backgroundImages: [Image]? { get set }
    
    var personalBest100Meters: Double? { get set }
    
    var age: Int? { get set }
    
    var birthDate: Date? { get set }
    
    var hostName: String? { get set }
    
    var homePage: URL? { get set }
    
    var ipv4Address: String? { get set }
    
    var userName: String? { get set }
    
    var married: Bool? { get set }
    
    var nickNames: [String]? { get set }
    
    var profileImage: Image? { get set }
    
    var petName: String? { get set }
    
    var luckyEvenNumber: Int? { get set }
    
    var name: String? { get set }
    
    var gender: PersonGenderType? { get set }
    
}

struct PersonDTO: Person {
    enum CodingKeys: String, CodingKey {
        
        case ipv6Address = "ipv6Address"
        
        case emailAddress = "emailAddress"
        
        case backgroundImages = "backgroundImages"
        
        case personalBest100Meters = "personalBest100Meters"
        
        case age = "age"
        
        case birthDate = "birthDate"
        
        case hostName = "hostName"
        
        case homePage = "homePage"
        
        case ipv4Address = "ipv4Address"
        
        case userName = "userName"
        
        case married = "married"
        
        case nickNames = "nickNames"
        
        case profileImage = "profileImage"
        
        case petName = "petName"
        
        case luckyEvenNumber = "luckyEvenNumber"
        
        case name = "name"
        
        case gender = "gender"
        
    }

    
    init() {

    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        
        ipv6Address = try container.decodeIfPresent(String.self, forKey: .ipv6Address)
        
        
        
        emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        
        
        
        backgroundImages = try container.decodeIfPresent([ImageDTO].self, forKey: .backgroundImages)
        
        
        
        personalBest100Meters = try container.decodeIfPresent(Double.self, forKey: .personalBest100Meters)
        
        
        
        age = try container.decodeIfPresent(Int.self, forKey: .age)
        
        
        
        birthDate = try container.decodeIfPresent(Date.self, forKey: .birthDate)
        
        
        
        hostName = try container.decodeIfPresent(String.self, forKey: .hostName)
        
        
        
        homePage = try container.decodeIfPresent(URL.self, forKey: .homePage)
        
        
        
        ipv4Address = try container.decodeIfPresent(String.self, forKey: .ipv4Address)
        
        
        
        userName = try container.decodeIfPresent(String.self, forKey: .userName)
        
        
        
        married = try container.decodeIfPresent(Bool.self, forKey: .married)
        
        
        
        nickNames = try container.decodeIfPresent([String].self, forKey: .nickNames)
        
        
        
        profileImage = try container.decodeIfPresent(ImageDTO.self, forKey: .profileImage)
        
        
        
        petName = try container.decodeIfPresent(String.self, forKey: .petName)
        
        
        
        luckyEvenNumber = try container.decodeIfPresent(Int.self, forKey: .luckyEvenNumber)
        
        
        
        name = try container.decodeIfPresent(String.self, forKey: .name)
        
        
        
        gender = try container.decodeIfPresent(PersonGenderType.self, forKey: .gender)
        
        
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        
        try container.encodeIfPresent(ipv6Address, forKey: .ipv6Address)
        
        
        
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        
        
        
        try container.encodeIfPresent(backgroundImages as? [ImageDTO], forKey: .backgroundImages)
        
        
        
        try container.encodeIfPresent(personalBest100Meters, forKey: .personalBest100Meters)
        
        
        
        try container.encodeIfPresent(age, forKey: .age)
        
        
        
        try container.encodeIfPresent(birthDate, forKey: .birthDate)
        
        
        
        try container.encodeIfPresent(hostName, forKey: .hostName)
        
        
        
        try container.encodeIfPresent(homePage, forKey: .homePage)
        
        
        
        try container.encodeIfPresent(ipv4Address, forKey: .ipv4Address)
        
        
        
        try container.encodeIfPresent(userName, forKey: .userName)
        
        
        
        try container.encodeIfPresent(married, forKey: .married)
        
        
        
        try container.encodeIfPresent(nickNames, forKey: .nickNames)
        
        
        
        try container.encodeIfPresent(profileImage as? ImageDTO, forKey: .profileImage)
        
        
        
        try container.encodeIfPresent(petName, forKey: .petName)
        
        
        
        try container.encodeIfPresent(luckyEvenNumber, forKey: .luckyEvenNumber)
        
        
        
        try container.encodeIfPresent(name, forKey: .name)
        
        
        
        try container.encodeIfPresent(gender, forKey: .gender)
        
        
    }

    
    
    var ipv6Address: String?
    
    
    
    var emailAddress: String?
    
    
    
    var backgroundImages: [Image]? {
        willSet(newValue) {
            precondition(newValue == nil || newValue is [ImageDTO], "New value should be an instance of [ImageDTO] but was: \(String(describing: newValue))")
        }
    }
    
    
    
    var personalBest100Meters: Double?
    
    
    
    var age: Int?
    
    
    
    var birthDate: Date?
    
    
    
    var hostName: String?
    
    
    
    var homePage: URL?
    
    
    
    var ipv4Address: String?
    
    
    
    var userName: String?
    
    
    
    var married: Bool?
    
    
    
    var nickNames: [String]?
    
    
    
    var profileImage: Image? {
        willSet(newValue) {
            precondition(newValue == nil || newValue is ImageDTO, "New value should be an instance of ImageDTO but was: \(String(describing: newValue))")
        }
    }
    
    
    
    var petName: String?
    
    
    
    var luckyEvenNumber: Int?
    
    
    
    var name: String?
    
    
    
    var gender: PersonGenderType?
    
    
}
