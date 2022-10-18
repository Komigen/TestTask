import UIKit


class ViewController: UIViewController {
    
    private var collectionView = MyCollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        
        view.backgroundColor = UIColor(red: 244/255, green: 246/255, blue: 247/255, alpha: 1)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            collectionView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
//        collectionView.set(cells: <#T##[DataModel]#>)
        
    }
    
}
