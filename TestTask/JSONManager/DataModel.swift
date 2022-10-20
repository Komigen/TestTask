import Foundation

struct DataModel: Decodable {
    let sections: [Section]
}

struct Section: Codable {
    let header: String
    let itemsTotal, itemsToShow: Int
    let items: [Item]
}

struct Item: Codable {
    let image: Image
    let title: String
}

struct Image: Codable {
    let the1X, the2X, the3X: String
    let aspectRatio: Int?
    let loopAnimation: Bool?

    enum CodingKeys: String, CodingKey {
        case the1X = "1x"
        case the2X = "2x"
        case the3X = "3x"
        case aspectRatio, loopAnimation
    }
}


struct NewStruct: Codable {
    var header: String?
    var itemsTotal, itemsToShow: Int?
    var items: Int?
    var title: String?
    var the1X, the2X, the3X: String?
    
    init(from decoder: Decoder) throws {
        let rawResponse = try DataModel(from: decoder)
        
        let section = rawResponse.sections.first
        
        self.header = section?.header
        self.itemsTotal = section?.itemsTotal
        self.itemsToShow = section?.itemsToShow
        self.items = section?.items.count
        self.title = section?.items.first?.title
        self.the1X = section?.items.first?.image.the1X
        self.the2X = section?.items.first?.image.the2X
        self.the3X = section?.items.first?.image.the3X

    }
}
