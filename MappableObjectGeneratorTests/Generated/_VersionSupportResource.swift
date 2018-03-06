import Foundation

protocol VersionSupportResource: Codable {
    
    var header: String? { get set }
    
    var imageCommand: ImageCommand? { get set }
    
    var supportLevel: String? { get set }
    
    var title: String? { get set }
    
    var contents: String? { get set }
    
    var buttonText: String? { get set }
    
    var url: String? { get set }
    
}

struct VersionSupportResourceDTO: VersionSupportResource {
    enum CodingKeys: String, CodingKey {
        
        case header = "header"
        
        case imageCommand = "imageCommand"
        
        case supportLevel = "supportLevel"
        
        case title = "title"
        
        case contents = "contents"
        
        case buttonText = "buttonText"
        
        case url = "url"
        
    }

    init() {

    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        header = try container.decodeIfPresent(String.self, forKey: .header)
        
        imageCommand = try container.decodeIfPresent(ImageCommandDTO.self, forKey: .imageCommand)
        
        supportLevel = try container.decodeIfPresent(String.self, forKey: .supportLevel)
        
        title = try container.decodeIfPresent(String.self, forKey: .title)
        
        contents = try container.decodeIfPresent(String.self, forKey: .contents)
        
        buttonText = try container.decodeIfPresent(String.self, forKey: .buttonText)
        
        url = try container.decodeIfPresent(String.self, forKey: .url)
        
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encodeIfPresent(header, forKey: .header)
        
        try container.encodeIfPresent(imageCommand as? ImageCommandDTO, forKey: .imageCommand)
        
        try container.encodeIfPresent(supportLevel, forKey: .supportLevel)
        
        try container.encodeIfPresent(title, forKey: .title)
        
        try container.encodeIfPresent(contents, forKey: .contents)
        
        try container.encodeIfPresent(buttonText, forKey: .buttonText)
        
        try container.encodeIfPresent(url, forKey: .url)
        
    }

    
    var header: String?
    
    var imageCommand: ImageCommand? {
        willSet(newValue) {
            precondition(newValue == nil || newValue is ImageCommandDTO, "New value should be an instance of ImageCommandDTO but was: \(newValue)")
        }
    }
    
    var supportLevel: String?
    
    var title: String?
    
    var contents: String?
    
    var buttonText: String?
    
    var url: String?
    
}
