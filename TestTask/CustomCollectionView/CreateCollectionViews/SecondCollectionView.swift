import UIKit

final class SecondCollectionView: CustomCollectionView {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ViewController.secondItemsArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.cellId, for: indexPath) as! CustomCollectionViewCell
        let item = ViewController.secondItemsArray[indexPath.row]
        
        cell.titleLabel.text = item.title
        cell.imageView.loadmagePost(stringUrl: UrlImages.second.rawValue)
        
        return cell
    }
}

