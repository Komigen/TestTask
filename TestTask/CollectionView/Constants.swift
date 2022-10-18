import UIKit

struct Constants {
    static let leftDistanceToView: CGFloat = 30
    static let rightDistanceToView: CGFloat = 30
    static let minimumLineSpacing: CGFloat = 10
    static let cellWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - Constants.minimumLineSpacing / 2) / 2
}
