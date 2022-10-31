import UIKit

final class ViewController: UIViewController {
        
    private var scrollView = UIScrollView()
    private var firstCollectionView = FirstCollectionView()
    private var secondCollectionView = SecondCollectionView()
    private var thirdCollectionView = ThirdCollectionView()
    private var fourthCollectionView = FourthCollectionView()
    
    private var firstLabel = UILabel().customLabel
    private var secondLabel = UILabel().customLabel
    private var thirdLabel = UILabel().customLabel
    private var fourthLabel = UILabel().customLabel

    //MARK: Arrays for storing decoded data
    
    static var sectionsArray: [Section]!
    static var firstItemsArray: [Item]!
    static var secondItemsArray: [Item]!
    static var thirdItemsArray: [Item]!
    static var fourthItemsArray: [Item]!
    
    var selectionLimit = 3
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(firstLabel)
        scrollView.addSubview(firstCollectionView)
        scrollView.addSubview(secondLabel)
        scrollView.addSubview(secondCollectionView)
        scrollView.addSubview(thirdLabel)
        scrollView.addSubview(thirdCollectionView)
        scrollView.addSubview(fourthLabel)
        scrollView.addSubview(fourthCollectionView)

        createUiElements()
        ViewController.sectionsArray = JsonManager().loadJson()

        for (index, section) in ViewController.sectionsArray.enumerated() {
            switch index {
            case 0:
                firstLabel.text = section.header
                ViewController.firstItemsArray = section.items
            case 1:
                secondLabel.text = section.header
                ViewController.secondItemsArray = section.items
            case 2:
                thirdLabel.text = section.header
                ViewController.thirdItemsArray = section.items
            case 3:
                fourthLabel.text = section.header
                ViewController.fourthItemsArray = section.items
            default:
                break
            }
        }
    }
    
    //MARK: Create CollectionView

   private func createUiElements() {
        
        view.backgroundColor = UIColor(red: 226/255, green: 246/255, blue: 246/255, alpha: 1)
        scrollView.backgroundColor = view.backgroundColor
        scrollView.showsVerticalScrollIndicator = false
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstCollectionView.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        secondCollectionView.translatesAutoresizingMaskIntoConstraints = false
        thirdLabel.translatesAutoresizingMaskIntoConstraints = false
        thirdCollectionView.translatesAutoresizingMaskIntoConstraints = false
        fourthLabel.translatesAutoresizingMaskIntoConstraints = false
        fourthCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: SupportSizes.topSpacing),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            firstLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: SupportSizes.leadingLabelSpacing),
            firstLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            firstLabel.widthAnchor.constraint(lessThanOrEqualTo: scrollView.widthAnchor),
            firstLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: SupportSizes.topLabelSpacing),
            
            firstCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            firstCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            firstCollectionView.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: SupportSizes.topCollectionViewSpacing),
            firstCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            firstCollectionView.heightAnchor.constraint(equalToConstant: SupportSizes.heightCell),
            
            secondLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: SupportSizes.leadingLabelSpacing),
            secondLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            secondLabel.widthAnchor.constraint(lessThanOrEqualTo: scrollView.widthAnchor),
            secondLabel.topAnchor.constraint(equalTo: firstCollectionView.bottomAnchor, constant: SupportSizes.topLabelSpacing),
            
            secondCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            secondCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            secondCollectionView.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: SupportSizes.topCollectionViewSpacing),
            secondCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            secondCollectionView.heightAnchor.constraint(equalToConstant: SupportSizes.heightCell),
            
            thirdLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: SupportSizes.leadingLabelSpacing),
            thirdLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            thirdLabel.widthAnchor.constraint(lessThanOrEqualTo: scrollView.widthAnchor),
            thirdLabel.topAnchor.constraint(equalTo: secondCollectionView.bottomAnchor, constant: SupportSizes.topLabelSpacing),
            
            thirdCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            thirdCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            thirdCollectionView.topAnchor.constraint(equalTo: thirdLabel.bottomAnchor, constant: SupportSizes.topCollectionViewSpacing),
            thirdCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            thirdCollectionView.heightAnchor.constraint(equalToConstant: SupportSizes.heightCell),
            
            fourthLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: SupportSizes.leadingLabelSpacing),
            fourthLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            fourthLabel.widthAnchor.constraint(lessThanOrEqualTo: scrollView.widthAnchor),
            fourthLabel.topAnchor.constraint(equalTo: thirdCollectionView.bottomAnchor, constant: SupportSizes.topLabelSpacing),
            
            fourthCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            fourthCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            fourthCollectionView.topAnchor.constraint(equalTo: fourthLabel.bottomAnchor, constant: SupportSizes.topCollectionViewSpacing),
            fourthCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            fourthCollectionView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            fourthCollectionView.heightAnchor.constraint(equalToConstant: SupportSizes.heightCell)
        ])
    }
}
