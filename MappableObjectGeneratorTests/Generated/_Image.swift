import Foundation

protocol ImageType: CodableType {
    var url: URL? { get set }
    var width: Int? { get set }
    var height: Int? { get set }
}

struct Image: ImageType {

    static let schemaID = "http://www.behindmedia.com/schemas/Image.json"

    // MARK: Coding keys
    enum CodingKeys: String, CodingKey {
        case url = "url"
        case width = "width"
        case height = "height"
    }
    
    // MARK: properties
    var url: URL?
    var width: Int?
    var height: Int?

    // MARK: No argument initializer
    init() {

    }

    // MARK: Decodable implementation
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        url = try container.decodeIfPresent(URL.self, forKey: .url)
        width = try container.decodeIfPresent(Int.self, forKey: .width)
        height = try container.decodeIfPresent(Int.self, forKey: .height)
    }

    // MARK: Encodable implementation
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
    }

    // MARK: Validation
    func validate() -> ValidationResult {
        let validator = ObjectValidator(object: self)
        return validator.evaluate()
    }
}
