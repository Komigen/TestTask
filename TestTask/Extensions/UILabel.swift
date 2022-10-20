import UIKit

//MARK: Extension - create custom UILabel (Header)

extension UILabel {
    var customLabel: UILabel {
        let label = UILabel()
        label.textColor = UIColor(red: 48/255, green: 54/255, blue: 83/255, alpha: 1)
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 23.0)
        label.textAlignment = .left
        label.numberOfLines = 1
        label.text = "Kohinoor Gujarati Bold"
        
        return label
    }
}
