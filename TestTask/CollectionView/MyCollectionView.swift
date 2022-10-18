import UIKit

class MyCollectionView: UICollectionView {
    
    var cells = [DataModel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
                
        backgroundColor = .clear
        delegate = self
        dataSource = self
        layout.minimumLineSpacing = Constants.minimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
        showsHorizontalScrollIndicator = false
        
        register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.cellId)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: Extensions

extension MyCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CollectionViewCell.cellId, for: indexPath) as! CollectionViewCell
        
        return cell
    }
}

extension MyCollectionView: UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.cellWidth, height: frame.height)
    }
}


//MARK: Animations - Briefly fade the cell on selection

extension MyCollectionView {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        
        UIView.animate(withDuration: 0.3,
                       animations: {
            cell?.alpha = 0.5
        }) { (completed) in
            UIView.animate(withDuration: 0.3,
                           animations: {
                cell?.alpha = 1
            })
        }
        
    }
}
