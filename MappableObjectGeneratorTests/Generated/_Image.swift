import Foundation

protocol Image: Codable {
    
    var url: URL? { get set }
    
    var width: Int? { get set }
    
    var height: Int? { get set }
    
}

struct ImageDTO: Image {
    enum CodingKeys: String, CodingKey {
        
        case url = "url"
        
        case width = "width"
        
        case height = "height"
        
    }

    init() {

    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        url = try container.decodeIfPresent(URL.self, forKey: .url)
        
        width = try container.decodeIfPresent(Int.self, forKey: .width)
        
        height = try container.decodeIfPresent(Int.self, forKey: .height)
        
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encodeIfPresent(url, forKey: .url)
        
        try container.encodeIfPresent(width, forKey: .width)
        
        try container.encodeIfPresent(height, forKey: .height)
        
    }

    
    var url: URL?
    
    var width: Int?
    
    var height: Int?
    
}
