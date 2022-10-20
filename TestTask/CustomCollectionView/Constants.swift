import UIKit

//MARK: Support Constant for create constraints

struct Constants {
    static let leadingLabelSpacing: CGFloat = 35
    static let topSpacing: CGFloat = 30
    static let topLabelSpacing: CGFloat = 25

    static let topCollectionViewSpacing: CGFloat = 10
    static let heightCell: CGFloat = 220
    static let leftDistanceToView: CGFloat = 30
    static let rightDistanceToView: CGFloat = 30
    static let minimumLineSpacing: CGFloat = 10
    static let cellWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - Constants.minimumLineSpacing / 2) / 2
}
