import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let cellId = "CollectionViewCell"
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.layer.cornerRadius = 22
        imageView.layer.borderColor = CGColor(red: 101/255, green: 129/255, blue: 247/255, alpha: 0.5)
        
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 46/255, green: 68/255, blue: 111/255, alpha: 0.95)
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 17.0)
        label.textAlignment = .left
        label.numberOfLines = 3
        label.text = "Food Guilt:How It Stops You From Losing Weight"
        
        return label
    }()
    
    private let viewForTitle: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 22
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        view.clipsToBounds = true
        view.backgroundColor = UIColor(white: 255/255, alpha: 0.8)
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        imageView.addSubview(viewForTitle)
        viewForTitle.addSubview(titleLabel)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        viewForTitle.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            viewForTitle.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            viewForTitle.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
            viewForTitle.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 135),
            viewForTitle.bottomAnchor.constraint(equalTo: imageView.bottomAnchor),
            
            titleLabel.leadingAnchor.constraint(equalTo: viewForTitle.leadingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: viewForTitle.trailingAnchor, constant: -12),
            titleLabel.topAnchor.constraint(equalTo: viewForTitle.topAnchor, constant: 10),
            titleLabel.bottomAnchor.constraint(equalTo: viewForTitle.bottomAnchor, constant: -10)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Animate
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderWidth = 2
                layer.cornerRadius = 22
                layer.borderColor = CGColor(red: 116/255, green: 140/255, blue: 246/255, alpha: 1.0)
            } else {
                layer.borderWidth = 0
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if self.isHighlighted {
                UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                    self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                    self.transform = CGAffineTransform(scaleX: 1, y: 1)
                }, completion: nil)
            }
        }
    }
}
