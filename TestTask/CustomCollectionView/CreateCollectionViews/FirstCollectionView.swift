import UIKit

final class FirstCollectionView: CustomCollectionView {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ViewController.firstItemsArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.cellId, for: indexPath) as! CustomCollectionViewCell
        let item = ViewController.firstItemsArray[indexPath.row]
        
        cell.titleLabel.text = item.title
        cell.imageView.loadmagePost(stringUrl: UrlImages.first.rawValue)
        
        return cell
    }
}
