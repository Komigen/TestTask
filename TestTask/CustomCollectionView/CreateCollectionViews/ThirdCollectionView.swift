import UIKit

final class ThirdCollectionView: CustomCollectionView {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ViewController.thirdItemsArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.cellId, for: indexPath) as! CustomCollectionViewCell
        let item = ViewController.thirdItemsArray[indexPath.row]
        
        cell.titleLabel.text = item.title
        cell.imageView.loadmagePost(stringUrl: urlImagesThirdVC[indexPath.row])
        
        return cell
    }
}

