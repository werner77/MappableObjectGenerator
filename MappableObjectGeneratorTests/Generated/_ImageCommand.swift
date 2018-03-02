import Foundation

class _ImageCommand: Codable {
    enum CodingKeys: String, CodingKey {
        
        case width = "width"
        case height = "height"
        case src = "src"
        case url = "url"
    }
    
    var width: Int?
    var height: Int?
    var src: String?
    var url: String?
}
