import Foundation

protocol ImageCommand: Codable {
    
    var src: String? { get set }
    
    var width: Int? { get set }
    
    var height: Int? { get set }
    
    var url: String? { get set }
    
}

struct ImageCommandDTO: ImageCommand {
    enum CodingKeys: String, CodingKey {
        
        case src = "src"
        
        case width = "width"
        
        case height = "height"
        
        case url = "url"
        
    }

    init() {

    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        src = try container.decodeIfPresent(String.self, forKey: .src)
        
        width = try container.decodeIfPresent(Int.self, forKey: .width)
        
        height = try container.decodeIfPresent(Int.self, forKey: .height)
        
        url = try container.decodeIfPresent(String.self, forKey: .url)
        
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encodeIfPresent(src, forKey: .src)
        
        try container.encodeIfPresent(width, forKey: .width)
        
        try container.encodeIfPresent(height, forKey: .height)
        
        try container.encodeIfPresent(url, forKey: .url)
        
    }

    
    var src: String?
    
    var width: Int?
    
    var height: Int?
    
    var url: String?
    
}
