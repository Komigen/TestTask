import UIKit

//MARK: Load image

extension UIImageView {
    
    func loadmagePost(stringUrl: String) {
        
        guard let url = URL(string: stringUrl), UIApplication.shared.canOpenURL(url) else { print("ERROR: image URL-address not valid.")
            return }
        let task = URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let safeData = data, error == nil {
                DispatchQueue.main.async {
                    self.image = UIImage(data: safeData)
                }
            }
        }
        task.resume()
    }
}
