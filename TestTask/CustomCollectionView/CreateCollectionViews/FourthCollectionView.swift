import UIKit

final class FourthCollectionView: CustomCollectionView {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ViewController.fourthItemsArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.cellId, for: indexPath) as! CustomCollectionViewCell
        let item = ViewController.fourthItemsArray[indexPath.row]
        
        cell.titleLabel.text = item.title
        cell.imageView.loadmagePost(stringUrl: UrlImages.fourth.rawValue)
        
        return cell
    }
}
