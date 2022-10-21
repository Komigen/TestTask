import UIKit

//MARK: Support Constant for create constraints

struct SupportSizes {
    static let leadingLabelSpacing: CGFloat = 35.0
    static let topSpacing: CGFloat = 30.0
    static let topLabelSpacing: CGFloat = 25.0
    static let topCollectionViewSpacing: CGFloat = 10.0
    static let heightCell: CGFloat = 220.0
    static let leftDistanceToView: CGFloat = 30.0
    static let rightDistanceToView: CGFloat = 30.0
    static let minimumLineSpacing: CGFloat = 10.0
    static let cellWidth = (UIScreen.main.bounds.width - SupportSizes.leftDistanceToView - SupportSizes.rightDistanceToView - SupportSizes.minimumLineSpacing / 2) / 2
}
