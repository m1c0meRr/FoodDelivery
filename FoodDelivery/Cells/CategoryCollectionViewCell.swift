//
//  someCollectionViewCell.swift
//
//  Created by Sergey Savinkov on 12.01.2024.

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    var categoryLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 0.4)
        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    static let collectionViewCellID = "collectionViewCellID"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        configureCell()
        setConstraints()
    }
    
    private func setupViews() {
        backgroundColor = .clear
        
        self.addSubview(categoryLabel)
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                contentView.layer.borderWidth = 0
                layer.borderColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 0.4)
                contentView.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 0.4)
                categoryLabel.textColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 1)
                
            } else {
                contentView.layer.borderWidth = 1
                layer.borderColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 0.4)
                contentView.backgroundColor = .clear
                categoryLabel.textColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 0.4)
            }
        }
    }
    
    func configureCell() {
        contentView.layer.cornerRadius = 17
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 0.4)
        contentView.layer.masksToBounds = true
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            categoryLabel.widthAnchor.constraint(equalToConstant: frame.width),
            categoryLabel.heightAnchor.constraint(equalToConstant: frame.height)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
