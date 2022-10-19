import Foundation

struct DataModel: Codable {
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
