
import Foundation

struct Book: Decodable, Identifiable, Hashable {
    var id: Int
    var name: String
    var author: String
    var image: String
    var description: String
    var kind: String
}
