import UIKit


class ViewController: UIViewController {
    
    lazy var decoderData = [Section]()
    
    private var scrollView = UIScrollView()
    private var firstCollectionView = MyCollectionView()
    private var secondCollectionView = MyCollectionView()
    private var thirdCollectionView = MyCollectionView()
    private var fourthCollectionView = MyCollectionView()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(firstCollectionView)
        scrollView.addSubview(secondCollectionView)
        scrollView.addSubview(thirdCollectionView)
        scrollView.addSubview(fourthCollectionView)

        createUiElements()
        
        if let data = JsonManager().loadJson() {
            decoderData = data
            
            
        }
    }
    
    //MARK: Create CollectionView

    func createUiElements() {
        
        view.backgroundColor = UIColor(red: 244/255, green: 246/255, blue: 247/255, alpha: 1)
        scrollView.backgroundColor = view.backgroundColor
        scrollView.showsVerticalScrollIndicator = false

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        firstCollectionView.translatesAutoresizingMaskIntoConstraints = false
        secondCollectionView.translatesAutoresizingMaskIntoConstraints = false
        thirdCollectionView.translatesAutoresizingMaskIntoConstraints = false
        fourthCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
            firstCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            firstCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            firstCollectionView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: Constants.spacingBetweenCollectionView),
            firstCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            firstCollectionView.heightAnchor.constraint(equalToConstant: Constants.heightCell),
            
            secondCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            secondCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            secondCollectionView.topAnchor.constraint(equalTo: firstCollectionView.bottomAnchor, constant: Constants.spacingBetweenCollectionView),
            secondCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            secondCollectionView.heightAnchor.constraint(equalToConstant: Constants.heightCell),
            
            thirdCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            thirdCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            thirdCollectionView.topAnchor.constraint(equalTo: secondCollectionView.bottomAnchor, constant: Constants.spacingBetweenCollectionView),
            thirdCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            thirdCollectionView.heightAnchor.constraint(equalToConstant: Constants.heightCell),
            
            fourthCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            fourthCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            fourthCollectionView.topAnchor.constraint(equalTo: thirdCollectionView.bottomAnchor, constant: Constants.spacingBetweenCollectionView),
            fourthCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            fourthCollectionView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            fourthCollectionView.heightAnchor.constraint(equalToConstant: Constants.heightCell)
        ])
    }
}
