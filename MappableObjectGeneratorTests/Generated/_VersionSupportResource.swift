import Foundation

class _VersionSupportResource: Codable {
    enum CodingKeys: String, CodingKey {
        
        case header = "header"
        case url = "url"
        case supportLevel = "supportLevel"
        case title = "title"
        case buttonText = "buttonText"
        case contents = "contents"
        case imageCommand = "imageCommand"
    }
    
    var header: String?
    var url: String?
    var supportLevel: String?
    var title: String?
    var buttonText: String?
    var contents: String?
    var imageCommand: ImageCommand?
}
