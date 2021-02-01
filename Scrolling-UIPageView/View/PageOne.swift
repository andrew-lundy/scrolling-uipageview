//
//  PageOne.swift
//  Scrolling-UIPageView
//
//  Created by Andrew Lundy on 1/31/21.
//

import UIKit


class PageOne: UIView {

    // MARK: - Properties
    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.makeCircle()
        
        return imageView
    }()
    
    private var typeOfBeeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        
        return label
    }()
    
    private var averageLifespanLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        
        return label
    }()
    
    lazy private var infoStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(typeOfBeeLabel)
        stackView.addArrangedSubview(averageLifespanLabel)
        
        return stackView
    }()
    
    // MARK: - Methods
    func setupView(withTypeOf bee: Bee) {
        let typeOfBeeHeadline = NSAttributedString(string: "Type of Bee: ", attributes: [NSAttributedString.Key.font : UIFont.preferredFont(forTextStyle: .headline)])
        let lifespanHeadline = NSAttributedString(string: "Lifespan: ", attributes: [NSAttributedString.Key.font : UIFont.preferredFont(forTextStyle: .headline)])
        
        switch bee {
        case .drone:
            imageView.image = UIImage(named: "Drone")
            typeOfBeeLabel.text = "\(typeOfBeeHeadline)drone"
            averageLifespanLabel.text = "\(lifespanHeadline)8 weeks"
        case .worker:
            imageView.image = UIImage(named: "Worker")
            typeOfBeeLabel.text = "\(typeOfBeeHeadline)worker"
            averageLifespanLabel.text = "\(lifespanHeadline)6 weeks"
        case .queen:
            imageView.image = UIImage(named: "Queen")
            typeOfBeeLabel.text = "\(typeOfBeeHeadline)queen"
            averageLifespanLabel.text = "\(lifespanHeadline)2 years"
        }
        
        NSLayoutConstraint.activate([
            infoStack.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            infoStack.topAnchor.constraint(equalTo: self.topAnchor, constant: 75),
            infoStack.heightAnchor.constraint(equalToConstant: 50),
            infoStack.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }
    
    
    
    // MARK: - Overrides
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
