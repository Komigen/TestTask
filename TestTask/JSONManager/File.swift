//struct RawResponse: Codable {
//    let query: Query
//
//    enum CodingKeys: String, CodingKey {
//        case query
//    }
//}
//
//struct Query: Codable {
//    let pages: [Page]
//}
//
//struct Page: Codable {
//    let pageid: Int?
//    let title: String?
//    let terms: Terms?
//    let thumbnail: Thumbnail?
//}
//
//struct Terms: Codable {
//    let description: [String]
//}
//
//struct Thumbnail: Codable {
//    let source: String
//    let width, height: Int
//}
//
//
//struct Wikipage: Decodable {
//
//    var pageid: Int?
//    var thumbnail: String?
//    var title: String?
//    var description: String?
//
//    init(from decoder: Decoder) throws {
//        let rawResponse = try RawResponse(from: decoder)
//
//        let pageZero = rawResponse.query.pages.first
//
//        self.pageid = pageZero?.pageid
//        self.thumbnail = pageZero?.thumbnail?.source
//        self.title = pageZero?.title
//        self.description = pageZero?.terms?.description.first
//    }
//}
